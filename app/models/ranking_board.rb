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
	after_create :initialize_blank_rankings

# CLASS METHODS

# INSTANCE METHODS
	def to_s
		"#{self.tvshow} (Top #{self.capacity}) - #{self.user}"
	end

	def to_json
		self.rankings
	end

# PRIVATE METHODS
private
	def initialize_blank_rankings
		self.capacity.times do |index|
			self.rankings.create rank: index+1
		end
	end

end
