class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @shout_feed = current_user.shout_feed_for_self_and_followed_users
  end
end
