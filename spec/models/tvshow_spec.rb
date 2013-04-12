require 'spec_helper'

describe Tvshow do

	it "has a valid factory" do
		FactoryGirl.create(:tvshow).should be_valid
	end

end
