class RecipeController < ApplicationController
  before_action :authenticate_user!

  def add
    @user = current_user
    @recipe = Recipe.find_by(:f2f_id => params[:f_id])
    unless @recipe
      @recipe = Recipe.create(
      f2f_id: params[:f_id],
      rsite: params[:f2f_url],
      rpic: params[:image_url],
      title: params[:title]
      )
    end
    unless UserRecipe.find_by(recipe_id: @recipe.id, user_id: @user.id)
      @user.recipes << @recipe
    end
  end
end
