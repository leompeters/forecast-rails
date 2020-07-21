# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'forecast/index.html.erb', type: :view do
  it 'renders a list of configurations/countries' do
    render
    assert_select 'h1', text: 'Forecast in Rails'.to_s
    expect(rendered).to match %r{/Find me in app/views/forecast/index.html.erb/}
  end
end
