class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def submit
    # instance of the recipe class
    # create recipe ingredients for each if in the ingrediets key
    @recipe = Recipe.create(
      name:           @attributes[:name],
      description:    @attributes[:description],
      ingredients:    @attributes[:ingredients],
    )

    @attributes[:ingredients]
  end




end
