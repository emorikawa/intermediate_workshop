class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :medium, polymorphic: true
  after_create :index_medium

  def self.current
    order("created_at DESC")
  end

  private

  def index_medium
    medium.index
  end
end
