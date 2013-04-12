require 'spec_helper'

describe Episode do

	it "has a valid factory" do
		FactoryGirl.create(:episode).should be_valid
	end

	describe "associations" do
		it { should belong_to(:tvshow) }
		it { should have_many(:moments) }
	end

end
