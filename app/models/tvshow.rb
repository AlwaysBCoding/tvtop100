class Tvshow < ActiveRecord::Base
# ASSOCIATIONS
	has_many :episodes
	has_many :ranking_boards

# VALIDATIONS
	validates :name, presence: true
	validates :slug, presence: true, uniqueness: true

# SCOPES

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS
	def to_s
		self.name.titleize
	end

	def moments
		Moment.where("episode_id IN (?)", self.episodes.pluck(:id)).to_a
	end

	def number_of_seasons
		return episodes.map(&:season).uniq.length
	end

	# def to_param
	# 	self.slug
	# end

# PRIVATE METHODS
private

end
