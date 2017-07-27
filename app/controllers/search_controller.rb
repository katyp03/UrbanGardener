class SearchController < ApplicationController
  def index
    @search_term = params[:looking_for]
    @search_term = @search_term.join(', ') if @search_term.is_a? Array
  	@search = Search.for(@search_term)
  end
end
