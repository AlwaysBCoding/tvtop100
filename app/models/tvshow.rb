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
	def to_param
		self.slug
	end

# PRIVATE METHODS
private

end
