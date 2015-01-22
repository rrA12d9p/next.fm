class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :songs

	validates :title, :song_id, :user_id, presence: true
end