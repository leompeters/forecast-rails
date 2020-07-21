# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Forecasts', type: :request do
  it 'render the form to search the forecast' do
    get '/'

    expect(response).to have_http_status :success
    expect(response).to render_with_layout :application
    expect(response).to render_template :index
    expect(response.content_type).to eq('text/html; charset=utf-8')
  end
end
