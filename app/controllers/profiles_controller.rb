class ProfilesController < ApplicationController
  def show
  	@user_id = params[:user_id]
  	@user = User.find(@user_id)
  end
end
