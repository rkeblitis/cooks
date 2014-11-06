class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create

    if Recipe.create(params.require(:recipe).permit(:name, :description))
      redirect_to root_path
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
