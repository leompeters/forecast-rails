# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'forecast/index.js.erb', type: :view do
  it 'renders a list of configurations/countries' do
    render
    # TODO: assert_select 'h1', text: 'Forecast#index'.to_s
    # TODO: expect(rendered).to match %r{/Find me in app//views//forecast//index\.html\.erb/}
  end
end
