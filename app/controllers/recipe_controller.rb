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

  def remove
    @recipe = Recipe.find_by(:f2f_id => params[:f_id])
    @userrecipe = UserPlant.find_by(plant_id: params[:id], user_id: current_user.id)
    unless @userrecipe.nil?
      @userrecipe.destroy
    else
    end
    @userrecipe = UserRecipe.find_by(recipe_id: params[:f_id], user_id: current_user.id)
    redirect_back(fallback_location: root_path)
  end

end
