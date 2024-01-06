

require 'rails_helper'

RSpec.describe AnalyticsController, type: :request do
  it 'renders the index template' do
    get '/analytics'
    expect(response).to render_template(:index)
  end
end
