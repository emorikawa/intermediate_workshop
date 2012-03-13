class SearchIndex < ActiveRecord::Base
  belongs_to :shout

  def self.search(query)
    Shout.where(id: result_ids(query))
  end

  private

  def self.result_ids(query)
    SearchIndex.where("data LIKE ?", "%#{query}%").map(&:shout_id)
  end
end
