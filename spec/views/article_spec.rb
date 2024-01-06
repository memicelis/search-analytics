# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/index', type: :view do
  before do
    assign(:articles, [Article.new(title: 'Test Article')])
    render
  end

  describe 'index' do
    it 'renders a search form' do
      expect(rendered).to have_field('query')
    end

    it 'renders the articles partial' do
      expect(rendered).to render_template(partial: 'articles/_articles')
    end

    it 'renders an article' do
      expect(rendered).to have_content('Test Article')
    end
  end
end
