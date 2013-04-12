require 'spec_helper'

describe Moment do

	it "should have a valid factory" do
		FactoryGirl.create(:moment).should be_valid
	end

	describe "associations" do
		it { should belong_to :episode }
		it { should have_many :rankings}
		it { should have_many(:ranking_boards).through(:rankings) }
	end

end
