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
    it "returns lists of children who have been naughty or nice" do
      spawn1 = FactoryGirl.build(:child, lastname: "Brown", good: true)
      spawn2 = FactoryGirl.build(:child, lastname: "Brown", good: true)
      spawn3 = FactoryGirl.build(:child, good: false)
puts "here too"
#      expect(Child.check_list("nice")).not_to be_empty
      expect(Child.check_list("nice")).to eq([spawn1, spawn2])
      expect Child.check_list("naughty").to eq[spawn3]

    end
  end
end
