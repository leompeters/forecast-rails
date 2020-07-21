# frozen_string_literal: true

class ForecastController < ApplicationController
  # GET /forecast
  # GET /forecast.js
  def index
    respond_to do |format|
      format.html
      format.js do
        @forecast = Forecast.search(params[:city], params[:state],
                                    params[:zip], params[:country])
        render 'index.js.erb'
      end
    end
  # TODO: rescue StandardError => e
  #   Rails.logger.error e.message
  end
end
