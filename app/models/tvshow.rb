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

# PRIVATE METHODS
private

end
