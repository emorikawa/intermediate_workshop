class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @shouts = current_user.shout_feed.shouts
    #.includes(:medium => :shout)
  end
end
