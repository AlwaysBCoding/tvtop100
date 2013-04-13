FactoryGirl.define do
	factory :tvshow do

		name "Game of Thrones"
		slug "game-of-thrones"

		factory :mad_men do
			name "Mad Men"
			slug "mad-men"
		end

		factory :breaking_bad do
			name "Breaking Bad"
			slug "breaking-bad"
		end

	end
end
