class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts

  has_many :following_relationships, foreign_key: "following_user_id"
  has_many :followed_users, through: :following_relationships

  attr_accessible :email, :password

  def create_shout(medium)
    shouts.create(medium: medium)
  end

  def follow(user)
    followed_users << user
  end

  def can_follow?(user)
    !self_and_followed_user_ids.include?(user.id)
  end

  private
  def self_and_followed_user_ids
    [id] + followed_user_ids
  end
end
