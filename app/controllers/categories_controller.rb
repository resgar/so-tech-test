# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Rails.cache.fetch('categories', expires_in: 1.hour) do
      categories = Mealdb::Client.new.categories.parse['categories']
      categories.each do |category|
        Category.create(name: category['strCategory'], external_id: category['idCategory'])
      end
      categories
    end
  end
end
