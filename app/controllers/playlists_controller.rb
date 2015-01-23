class PlaylistsController < ApplicationController
  def index
  	@all_playlists = current_user.playlists.all

  	respond_to do |format|
  	  format.json { render :json => @all_playlists }
  	end
  end

  def show
    @user = User.find(params[:user_id])
    @playlist = @user.playlists.find(params[:id])
  end

	# take a playlist_id and track json object (serialized)
	# create that track in the db (if it doesn't exist?)
  def add_track
    new_track = Track.new(track_params)
    if new_track.save
      render :json => new_track
    else
      render :json => new_track.errors.full_messages
    end
  end

  private
  def track_params
    params.require(:track).permit(:sc_track_id, :title, :artwork_url, :sc_user_id, :playlist_id, :username)
  end
end
