# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Forecasts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/forecast/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/forecast/create'
      expect(response).to have_http_status(:success)
    end
  end
end
