require 'spec_helper'

describe Ranking do

	it "has a valid factory" do
		FactoryGirl.create(:ranking).should be_valid
	end

	describe "associations" do
		it { should belong_to(:moment) }
		it { should belong_to(:ranking_board) }
	end

	describe "validations" do
		it { should validate_uniqueness_of(:rank).scoped_to(:ranking_board_id) }
	end

end
