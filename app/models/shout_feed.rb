class ShoutFeed
  extend ActiveModel::Naming

  def initialize(user_ids)
    @user_ids = user_ids
  end

  def shouts
    Shout.where(user_id: @user_ids).current.includes(:user, {:medium => :shout})
  end
end
