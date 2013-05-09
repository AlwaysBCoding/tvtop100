class User < ActiveRecord::Base
# ASSOCIATIONS
	has_many :ranking_boards

# VALIDATIONS
	validates :email, presence: true

# SPECIAL FEATURES
	has_secure_password

# SCOPES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS
	def to_s
		self.email
	end

# PRIVATE METHODS
private

end
