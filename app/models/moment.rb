class Moment < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :episode
  has_many :rankings
  has_many :ranking_boards, through: :rankings

# VALIDATIONS

# SPECIAL FEATURES
	mount_uploader :image, ImageUploader

# SCOPES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS
	def to_s
		self.title
	end

# PRIVATE METHODS
private

end
