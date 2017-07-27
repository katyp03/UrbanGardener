class SearchController < ApplicationController
  def index
    @userplant = current_user.plants
    @userplants = []
    @userplant.each do |plant|
      @userplants.push(plant.name)
    end
    # Define the search parameters
    @search_term = params[:looking_for] || @userplants
    # Change the search terms to a comma separated string if it is an array
    @search_term = @search_term.join(', ') if @search_term.is_a? Array
  	@search = Search.for(@search_term)
  end
end
