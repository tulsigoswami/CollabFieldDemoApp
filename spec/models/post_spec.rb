require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    it 'it belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end

    it 'it belongs_to category' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end
  end
end
