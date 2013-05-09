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

	describe "validations" do
	end

	describe "callbacks" do

		describe "after_create" do

			describe "#initialize_blank_rankings" do
				it "creates blank rankings equal to the ranking_boards capacity" do
					ranking_board = FactoryGirl.create(:ranking_board, capacity: 55)
					ranking_board.rankings.count.should eq 55
					ranking_board.rankings[21].moment_id.should be_nil
					ranking_board.rankings[21].ranking_board_id.should eq ranking_board.id
					ranking_board.rankings[21].rank.should eq 22
				end
			end

		end

	end

end
