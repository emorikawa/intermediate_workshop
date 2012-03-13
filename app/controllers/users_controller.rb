class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shout_feed = @user.shout_feed
  end
end
