# frozen_string_literal: true

require_relative 'request'

module Mealdb
  class Client
    def categories
      get('categories.php')
    end

    def recipe(id)
      get("lookup.php?i=#{id}")
    end

    def recipes(category_name)
      get("filter.php?c=#{category_name}")
    end

    private

    attr_reader :request

    def base_url
      'https://www.themealdb.com/api/json/v1/1'
    end

    def get(path)
      Request.new(base_url:, path:).get
    end
  end
end
