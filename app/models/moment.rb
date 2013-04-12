class Moment < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :episode
  has_many :rankings
  has_many :ranking_boards, through: :rankings

# VALIDATIONS

# SCOPES

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private
end
