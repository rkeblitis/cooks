class IngredientsController < ApplicationController

def index
  @ingredients = Ingredient.all
end

def new
  @ingredient = Ingredient.new
end

def create

  if Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end
end

def show
  find_ingredient
end

def edit
  find_ingredient
end

def update
  if @ingredient = find_ingredient.update(ingredient_params)
    redirect_to ingredient_path
  end
end

def destroy
  if find_ingredient.destroy
    redirect_to ingredients_path
  end
end

private

def find_ingredient
  @ingredient = Ingredient.find(params[:id])
end

def ingredient_params
  params.require(:ingredient).permit(:name,)
end

end
