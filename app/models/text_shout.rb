class TextShout < ActiveRecord::Base
  has_one :shout, as: :medium

  def index
    SearchIndex.create(shout: shout, data: body)
  end
end
