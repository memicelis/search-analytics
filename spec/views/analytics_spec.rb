

require 'rails_helper'

RSpec.describe 'analytics/index', type: :view do
  before do
    assign(:searches, [Search.new(id: 1, query: 'test')])
    render
  end

  it 'title of recent searches' do
    expect(rendered).to have_content('List of recent searches')
  end

  it 'renders list of search' do
    expect(rendered).to have_css('li', count: 1)
    expect(rendered).to have_content('test')
  end
end
