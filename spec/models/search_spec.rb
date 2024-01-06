

require 'rails_helper'

RSpec.describe Search, type: :model do
  let(:user) { User.create(ip_address: '127.0.0.1') }

  describe 'update_search_query method' do
    it 'creates a new search record with provided query' do
      expect do
        Search.update_search_query(user, 'test query')
      end.to change { Search.count }.by(1)
      expect(user.searches.last.query).to eq('test query')
    end

    it 'does not create new search record when query is not present' do
      expect do
        Search.update_search_query(user, nil)
      end.not_to(change { Search.count })
    end
  end

  describe 'similar_enough? method' do
    it 'returns true when two strings are similar enough' do
      expect(Search.similar_enough?('apple', 'apple is apple')).to be_truthy
    end

    it 'returns false when two strings are not similar enough' do
      expect(Search.similar_enough?('apple', 'orange')).to be_falsy
    end
  end
end
