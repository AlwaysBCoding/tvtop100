require 'spec_helper'

describe Tvshow do

	it "has a valid factory" do
		FactoryGirl.create(:tvshow).should be_valid
	end

	describe "associations" do
		it { should have_many(:episodes) }
		it { should have_many(:ranking_boards) }
	end

end
