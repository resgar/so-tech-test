# frozen_string_literal: true

require_relative 'request'

module Mealdb
  class Client
    def categories
      request('categories.php')
    end

    def recipe(id)
      request("lookup.php?i=#{id}")
    end

    def recipes(category_name)
      request("filter.php?c=#{category_name}")
    end

    private

    def base_url
      'https://www.themealdb.com/api/json/v1/1'
    end

    def request(path)
      Request.new(base_url:, path:).call
    end
  end
end
