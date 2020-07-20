# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ForecastController do
  describe 'GET #index' do
    before { get :index }

    it { is_expected.to respond_with :ok }
    it { is_expected.to respond_with_content_type 'text/html; charset=utf-8' }
    it { is_expected.to render_with_layout :application }
    it { is_expected.to render_template :index }

    it { should respond_with 200 }
    it { should respond_with :ok }

    it { should respond_with :success }
    it { should respond_with_content_type 'text/html; charset=utf-8' }
    it { should render_with_layout :application }
    it { should render_template :index }
  end

  describe 'POST #create' do
    let(:url) { forecast_path }

    context 'with valid params' do
      before do
        post :create, params: { forecast: { address: '', city: '', state: '', zip: '' } }
      end

      it { should respond_with :success }
      it { should respond_with_content_type 'text/html; charset=utf-8' }
      it { should render_with_layout :application }
      it { should render_template :index }
    end
    # it 're-renders #index form'
    # it 'render #error_messages alert'
    context 'with invalid params' do
      before do
        post :create, params: { forecast: { address: '', city: '', state: '', zip: '' } }
      end

      it { should respond_with :bad_request }
      it { should respond_with_content_type :js }
      # it { should redirect_to new_session_path }
      it { should set_flash(:warning).to('Address not found.') }
      # it { should set_session(:return_to).to(forecast_path) }
    end
  end
end
