class PlaylistsController < ApplicationController
  def index
  	@all_playlists = current_user.playlists.all

  	respond_to do |format|
  	  format.json { render :json => @all_playlists }
  	end
  end

	# take a playlist_id and track json object (serialized)
	# create that track in the db (if it doesn't exist?)
  def add_track(playlist_id, track)
  	puts playlist_id
  	puts track
  end
end
