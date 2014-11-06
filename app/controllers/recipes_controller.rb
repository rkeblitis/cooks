class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create

    if Recipe.create(recipe_params)
      redirect_to recipes_path
    end
  end

  def show
    find_recipe
  end

  def edit
    find_recipe
  end

  def update
    if @recipe = find_recipe.update(recipe_params)
      redirect_to recipe_path
    end
  end

  def destroy
    if find_recipe.destroy
      redirect_to recipes_path
    end
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
