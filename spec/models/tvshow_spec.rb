require 'spec_helper'

describe Tvshow do

	it "has a valid factory" do
		FactoryGirl.create(:tvshow).should be_valid
	end

	describe "associations" do
		it { should have_many(:episodes) }
		it { should have_many(:ranking_boards) }
	end

	describe "validations" do
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:slug) }
		it { should validate_uniqueness_of(:slug) }
	end

	describe "#moments" do
		it "should return a list of moments associated with the tv show" do
			episode = FactoryGirl.create(:episode)
			moment1 = episode.moments.create!
			moment2 = episode.moments.create!

			([moment1.id, moment2.id] & episode.tvshow.moments.map(&:id)).should eq [moment1.id, moment2.id].sort
		end
	end

end
