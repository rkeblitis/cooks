class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    if Recipe.create(params.require(:recipe).permit(:name, :desription))
      redirect_to root_path
    end
  end
end
