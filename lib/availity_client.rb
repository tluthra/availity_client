require "require_all"
require "faraday"
require "json"
require "uri"
require "base64"

require_rel "./"

module AvailityClient
  class MissingApiKeyError < StandardError; end

  class << self
    def base_url
      "https://api.availity.com/#{premium_key? ? "" : "demo/"}v1/"
    end

    def premium_key?
      !!ENV["AVAILITY_API_KEY"] && !!ENV["AVAILITY_API_SECRET"]
    end

    def generate_token
      raise MissingApiKeyError, "AVAILITY_API_KEY and AVAILITY_API_SECRET  Environment Variables must be set" unless ENV["AVAILITY_API_KEY"] && ENV["AVAILITY_API_SECRET"]

      conn = Faraday.new(url: "https://api.availity.com") do |faraday|
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
      end

      response = conn.post do |req|
        req.url "/v1/token"
        req.body = "grant_type=client_credentials&client_id=#{ENV["AVAILITY_API_KEY"]}&client_secret=#{ENV["AVAILITY_API_SECRET"]}&scope=hipaa"
      end

      JSON.parse(response.body)["access_token"]
    end

    def issue_request(method, url, params)
      api_key = ENV["AVAILITY_API_KEY"]
      raise MissingApiKeyError, "AVAILITY_API_KEY Environment Variable must be set" unless api_key

      uri = URI.parse(url)
      conn = Faraday.new(url: uri) do |faraday|
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
      end

      response = conn.send(method.to_sym) do |req|
        if premium_key?
          req.headers["Authorization"] = "Bearer #{generate_token}"
        else
          req.headers["x-api-key"] = api_key
        end

        if params.kind_of?(Hash)
          params.each { |key, value| req.params[key.to_s] = value }
        end
      end

      response_body = begin
          JSON.parse(response.body)
        rescue JSON::ParserError => e
          response.body
        end
      {
        headers: response.headers,
        status: response.status,
        body: response_body,
      }
    end
  end
end
