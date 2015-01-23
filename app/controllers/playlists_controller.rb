class PlaylistsController < ApplicationController
  def index
  	@all_playlists = current_user.playlists.all

  	respond_to do |format|
  	  format.json { render :json => @all_playlists }
  	end
  end
end
