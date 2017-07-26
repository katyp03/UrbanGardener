class SearchController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'chocolate'
  	@search = Search.for(@search_term)
  end
end
