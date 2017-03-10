class RecipeIngredientsController < ApplicationController

  def new
  end

  def create
    new_entry = RecipeIngredient.new
    recipe_id = params[:recipe_id].gsub('/recipes/','')
    new_entry.ingredient_id = params[:ingredient_id]
    new_entry.recipe_id = recipe_id
    new_entry.quantity = 1
    new_entry.save

    render json: new_entry.to_json

  end

end
