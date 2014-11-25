require 'rails_helper'

RSpec.describe Present, :type => :model do

  context "when defining a present" do

    it "has a valid factory" do
      expect(FactoryGirl.create(:present)).to be_valid
    end
    it "is invalid without a description" do
      expect(FactoryGirl.build(:present, description: nil)).not_to be_valid
    end
    it "is valid when associated with a real child. Real children have positive ID values" do
      expect(FactoryGirl.build(:present, child_id: 1)).to be_valid
      expect(FactoryGirl.build(:present, child_id: -1)).not_to be_valid
    end
    it "will only accept valid URLs" do
      expect(FactoryGirl.build(:present, url: "http://www.bt.com/")).to be_valid
      expect(FactoryGirl.build(:present, url: "It was on the telly")).not_to be_valid
    end
  end
 end
