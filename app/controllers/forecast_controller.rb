# frozen_string_literal: true

class ForecastController < ApplicationController
  # GET /forecast
  # GET /forecast.js
  def index
    return unless stale?(params[:zip])

    respond_to do |format|
      format.html
      format.js do
        @forecast = Forecast.search(params[:city], params[:state],
                                    params[:zip], params[:country])
        expires_in 30.minutes, public: true
        render 'index.js.erb'
      end
    end
    # TODO: rescue StandardError => e
    #   Rails.logger.error e.message
  end
end
