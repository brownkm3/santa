require 'rails_helper'

describe Child do
  let(:child) { Child.create(firstname: 'Katy') }

  context "when making the list" do

    it "is invalid without a firstname" do
      expect(Child.create(firstname: nil)).not_to be_valid
    end
    it "should default to good" do
      expect(child.good).to be_truthy
    end
    it "returns 'nice' if good is true" do
      expect(child.good?).to eq('nice')
    end
    it "returns 'naughty' if good is false" do
      child.good = false
      expect(child.good?).to eq('naughty')
    end
  end

  context "when checking the list" do
    let!(:spawn1) { Child.create(firstname: 'Katy', good: true) }
    let!(:spawn2) { Child.create(firstname: 'Fred', good: true) }
    let!(:spawn3) { Child.create(firstname: 'Bert', good: false) }

    it "provides a list for Santa to check" do
      expect(Child.check_list).not_to be_empty
    end

    it "tells him who's been naughty or nice" do
      expect(Child.check_list("nice")).to eq([spawn1, spawn2])
      expect(Child.check_list("naughty")).to eq([spawn3])
    end
  end
end
