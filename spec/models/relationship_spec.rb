require 'rails_helper'

RSpec.describe Relationship, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:follow).class_name('User') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:follow_id) }
  end
end
