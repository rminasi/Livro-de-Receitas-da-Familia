class IngredientsController < ApplicationController
  # def new
  #   @ingredient = Ingredient.find(params[:recipe_id])
  # end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @Ingredient = Ingrediente.new(ingredient_params)
    @ingrediente.recipe = @recipe
    if @ingredient.save
      redirect_to recipe_path(@recipe)
    else
      render "recipes/new"

    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.find(@ingredient.recipe_id)
  end
  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
