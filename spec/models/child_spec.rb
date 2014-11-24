require 'rails_helper'

RSpec.describe Child, :type => :model do

  describe Child do
    it "has a valid factory" do
      expect(FactoryGirl.create(:child)).to be_valid
    end
    it "is invalid without a firstname" do
      expect(FactoryGirl.build(:child, firstname: nil)).not_to be_valid
    end
    it "is invalid without a good status" do
      expect(FactoryGirl.build(:child, good: nil)).not_to be_valid
    end
    it "should default to good" do
      expect(FactoryGirl.build(:child).good).to be true
    end
    it "returns 'nice' if good is true" do
      expect(FactoryGirl.build(:child, good: true).good?).to eq('nice')
    end
    it "returns 'naughty' if good is false" do
       expect(FactoryGirl.build(:child, good: false).good?).to eq('naughty')
    end
  end
end
