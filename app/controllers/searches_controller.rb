class SearchesController < ApplicationController
  def show
    @shouts = SearchIndex.search(params[:search])
  end
end
