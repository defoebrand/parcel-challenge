require 'uri'
require 'net/http'

module Import
  module Locations
    
    class << self
      def run
        uri = URI('https://www.omniva.lt/locations.json')
        res = Net::HTTP.get_response(uri)
        
        puts res.is_a?(Net::HTTPSuccess) ? 'Connection Successful' : 'Connection Failed'

        begin
          JSON.parse(res.body).each do |parcel_data|
            ParcelMachine.import_record(parcel_data)
          end
          puts 'Data Import Successfully Completed'

        rescue StandardError => e
          puts e
        end
      end
    end
  end
end