class Episode < ActiveRecord::Base
# ASSOCIATIONS
  belongs_to :tvshow
  has_many :moments

# VALIDATIONS
	validates :name,   presence: true
	validates :season, presence: true, numericality: true
	validates :number, presence: true, numericality: true, uniqueness: { scope: [:tvshow_id, :season] }

# SCOPES
	scope :of_show, ->(tvshow_id) { where("tvshow_id = ?", tvshow_id).order("number asc") }
	scope :in_season, ->(season) { where("season = ?", season) }

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private

end
