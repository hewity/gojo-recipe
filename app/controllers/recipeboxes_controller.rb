class RecipeboxesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all

  end

  def new
    @recipe = Recipe.new

  end

  def show

  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :instruction, :ingredient)
  end

  def find_recipe
    @recipe =Recipe.find(params[:id])
  end

end
