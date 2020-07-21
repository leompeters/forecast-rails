# frozen_string_literal: true

class Forecast
  include Searchable

  BASE_URL = 'https://api.openweathermap.org/data/2.5/weather?q='
  private_constant :BASE_URL
end
