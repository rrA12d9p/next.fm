class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :tracks

	validates :title, :track_id, :user_id, presence: true
end