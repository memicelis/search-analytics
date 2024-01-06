

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(User.new(ip_address: '127.0.0.1')).to be_valid
    end

    it 'is not valid without ip address' do
      expect(User.new).to_not be_valid
    end
  end
end
