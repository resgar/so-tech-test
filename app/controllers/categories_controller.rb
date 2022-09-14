# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Mealdb::Client.new.categories.parse['categories']
  end
end
