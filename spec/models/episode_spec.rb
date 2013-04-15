require 'spec_helper'

describe Episode do

	it "has a valid factory" do
		FactoryGirl.create(:episode).should be_valid
	end

	describe "associations" do
		it { should belong_to(:tvshow) }
		it { should have_many(:moments) }
	end

	describe "validations" do
		it { should validate_presence_of :name }
		it { should validate_presence_of :season }
		it { should validate_presence_of :number }
		it { should validate_numericality_of :season }
		it { should validate_numericality_of :number }
		it { should validate_uniqueness_of(:number).scoped_to([:tvshow_id, :season])}
	end

end
