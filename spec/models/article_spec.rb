

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it 'validates presence of title' do
      article = Article.new
      expect(article).not_to be_valid
    end

    it 'validates minimum length of title' do
      article = Article.new(title: '')
      expect(article).not_to be_valid
    end

    it 'validates maximum length of title' do
      article = Article.new(title: 'a' * 101)
      expect(article).not_to be_valid
    end

    it 'is valid with valid atributes' do
      article = Article.new(title: 'Valid Title')
      expect(article).to be_valid
    end
  end
end
