

require 'rails_helper'

RSpec.describe ArticlesController, type: :request do
  let(:user) { User.create(ip_address: '127.0.0.1') }

  describe 'GET /articles' do
    it 'renders the index template' do
      get '/articles'
      expect(response).to render_template(:index)
    end

    it 'assigns @articles with all articles when no query is present' do
      Article.create(title: 'Sample Article')
      Article.create(title: 'Sample Article')
      get '/articles'
      articles = Article.all
      expect(assigns(:articles)).to eq(articles)
      expect(assigns(:articles).count).to eq(2)
    end
  end
end
