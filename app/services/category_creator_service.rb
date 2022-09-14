# frozen_string_literal: true

class CategoryCreatorService
  def initialize(categories)
    @categories = categories
  end

  def call
    new_categories.each do |category|
      Category.create(name: category['strCategory'], external_id: category['idCategory'])
    end
  end

  private

  attr_reader :categories

  def new_categories
    stored_ids = Category.all.pluck(:external_id).map(&:to_s)
    categories.select do |category|
      stored_ids.exclude?(category['idCategory'])
    end
  end
end
