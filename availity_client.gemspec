require "./lib/availity_client/version"

Gem::Specification.new do |s|
  s.name = "availity_client"
  s.version = AvailityClient::VERSION
  s.date = "2016-05-11"
  s.summary = "Availity API REST Client"
  s.description = "HTTP wrapper for Availity API"
  s.authors = ["Nicholas Lee"]
  s.email = "nicholas.lee.3@gmail.com"
  s.files = ["lib/availity_client.rb", "lib/availity_client/coverage.rb"]
  s.homepage = "https://github.com/leeacto/availity_client"
  s.license = "MIT"

  s.add_dependency "faraday", "~> 2.7.11"
  s.add_dependency "require_all"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
end
