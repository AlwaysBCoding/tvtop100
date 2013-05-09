class Ranking < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :moment
  belongs_to :ranking_board

# VALIDATIONS
	validates :rank, uniqueness: { scope: :ranking_board_id }

# SCOPES
	default_scope order("rank asc")

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private
end
