

require 'rails_helper'

RSpec.feature 'Search Management', type: :feature do
  before :all do
    @user = User.new(ip_address: "127.0.0.1#{rand(1000)}")
    @user.save!
  end

  scenario 'user adds two strings with similar distance, longer one should replace the shorter one' do
    visit root_path
    @first_query = 'long query'
    Search.update_search_query(@user, @first_query)

    @second_query = 'longer query'
    Search.update_search_query(@user, @second_query)

    expect(@user.searches.count).to eq(1)
  end

  scenario 'user adds two strings with similar distance, longer one should replace the shorter one' do
    visit root_path
    @first_query = 'first query'
    Search.update_search_query(@user, @first_query)

    @second_query = 'different query'
    Search.update_search_query(@user, @second_query)

    expect(@user.searches.count).to eq(2)
  end

  after :all do
    @user.destroy
  end
end
