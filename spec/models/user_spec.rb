require 'spec_helper'

describe User do

	it "should have a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	describe "associations" do
		it { should have_many :ranking_boards }
	end

	describe "validations" do
		it { should validate_presence_of :email }
	end

end
