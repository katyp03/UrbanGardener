class SearchController < ApplicationController
  def index
    # Define the search parameters
    @search_term = params[:looking_for] || "Herbs"
    # Change the search terms to a comma separated string if it is an array
    @search_term = @search_term.join(', ') if @search_term.is_a? Array
  	@search = Search.for(@search_term)
  end
end
