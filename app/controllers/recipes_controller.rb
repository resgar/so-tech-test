# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :set_recipe, only: :show

  def index
    category = Category.find_by(external_id: params[:category_id])
    if category
      @recipes = client.recipes(category.name).parse['meals']
    else
      render json: { message: 'Category not found.' }, status: :not_found
    end
  end

  def show
    render json: { message: 'Recipe not found.' }, status: :not_found unless @recipe
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = client.recipe(params[:id]).parse['meals'].try(:first)
  end
end
