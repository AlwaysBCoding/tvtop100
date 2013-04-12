class RankingBoard < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :tvshow
  belongs_to :user
  has_many :rankings
  has_many :moments, through: :rankings

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
