class Ranking < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :moment
  belongs_to :ranking_board

# VALIDATIONS
	validates_uniqueness_of :rank, scope: :ranking_board_id

# SCOPES

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private
end
