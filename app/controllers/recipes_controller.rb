class RecipesController < ApplicationController

  def new
  end


  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      @recipe.user_id = current_user.id
       redirect_to recipe_path(@recipe)
     else
       redirect_to user_path(current_user)
     end
   end

  def show
  end

  def update
  end

  def edit
  end


  def delete
  end


  private
  def recipe_params
    params.require(:recipe).permit(:name)
  end


end
