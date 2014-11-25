require 'rails_helper'

RSpec.describe Child, :type => :model do

  describe Child do

    context "when making the list" do

      it "has a valid factory" do
        expect(FactoryGirl.create(:child)).to be_valid
      end
      it "is invalid without a firstname" do
        expect(FactoryGirl.build(:child, firstname: nil)).not_to be_valid
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

    context "when checking the list" do
      before:each do
        @spawn1 = FactoryGirl.create(:child, good: true)
        @spawn2 = FactoryGirl.create(:child, good: true)
        @spawn3 = FactoryGirl.create(:child, good: false)
      end
      it "provides a list for Santa to check" do
        expect(Child.check_list).not_to be_empty
      end
      it "tells him who's been naughty or nice" do
        expect(Child.check_list("nice")).to eq([@spawn1, @spawn2])
        expect(Child.check_list("naughty")).to eq([@spawn3])
      end
    end
  end
end
