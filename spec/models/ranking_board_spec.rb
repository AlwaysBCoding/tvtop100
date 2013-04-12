require 'spec_helper'

describe RankingBoard do

	it "has a valid factory" do
		FactoryGirl.create(:ranking_board).should be_valid
	end

	describe "associations" do
		it { should belong_to(:user) }
		it { should belong_to(:tvshow) }
		it { should have_many(:rankings) }
		it { should have_many(:moments).through(:rankings) }
	end

end
