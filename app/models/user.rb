class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts

  has_many :following_relationships, foreign_key: "following_user_id"
  has_many :followed_users, through: :following_relationships

  def create_shout(medium)
    shouts.create(medium: medium)
  end
end
