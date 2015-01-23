class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :tracks

	validates :title, :user_id, presence: true
end