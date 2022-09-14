# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Rails.cache.fetch('categories', expires_in: 2.hours) do
      categories = client.categories.parse['categories']
      CategoryCreatorService.new(categories).call
      categories
    end
  end
end
