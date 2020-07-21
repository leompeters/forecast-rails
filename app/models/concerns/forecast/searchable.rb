# frozen_string_literal: true

# Allows Forecast class search by zip or city.
class Forecast
  module Searchable
    extend ActiveSupport::Concern

    class_methods do
      # Use Open Weather API to retrieve the forecast.
      def search(city, state, zip, country)
        return if city&.empty? && state&.empty? && zip&.empty?

        country = 'us' if country&.empty?
        url = BASE_URL
        url += zip.present? ? by_zip(zip, country) : by_city(city, state, country)
        url += "&appid=#{Rails.application.credentials.open_weather_api_key}&mode=html"

        call_external_api(url)
      end

      private

      # Set up Open Weather API params using city name.
      def by_zip(zip, country)
        [zip, country].join(',')
      end

      # Set up Open Weather API params using zip code.
      def by_city(city, state, country)
        [city, state, country].join(',')
      end

      def call_external_api(url)
        headers = { 'Content-Type': 'application/json' }
        uri     = URI.parse(url)

        # Create client.
        http = Net::HTTP.new(uri.host, uri.port)
        # Set SSL security.
        http.use_ssl     = true
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER
        # Create the request.
        request = Net::HTTP::Get.new(uri)
        # Add headers.
        headers.each { |key, value| request.add_field key, value }
        # Fetch Request.
        response = http.request(request)
        html_parse(response&.body)
      end

      def html_parse(bpdy)
        parsed_data = Nokogiri::HTML.parse(bpdy)
        parsed_data.xpath('//body').to_s
      end
    end
  end
end
