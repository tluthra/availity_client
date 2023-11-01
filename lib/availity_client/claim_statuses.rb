module AvailityClient
  class ClaimStatuses
    class << self
      def get(*args)
        if args.first.kind_of?(Integer)
          id = args.shift.to_s
        end

        url = "#{AvailityClient.base_url}claim-statuses#{"/" + id if id}"
        AvailityClient.issue_request("get", url, args.first)
      end

      def delete(id)
        url = "#{AvailityClient.base_url}claim-statuses/#{id}"

        AvailityClient.issue_request("delete", url, {})
      end
    end
  end
end
