class FollowingRelationshipsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    FollowingMailer.followed_notification(current_user, user).deliver
    redirect_to user, notice: "Now following"
  end
end
