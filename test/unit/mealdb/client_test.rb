# frozen_string_literal: true

require 'test_helper'

module Mealdb
  class ClientTest < ActiveSupport::TestCase
    setup do
      @client = Mealdb::Client.new
    end

    test 'should get categories' do
      categories = @client.categories
      assert_instance_of Array, categories.parse['categories']
    end

    test 'should get recipes by category name' do
      recipes = @client.recipes('Seafood')
      assert_instance_of Array, recipes.parse['meals']
    end

    test 'should get recipe by id' do
      recipe = @client.recipe(52_772)
      assert_instance_of Array, recipe.parse['meals']
    end

    test 'Invalid category name' do
      recipes = @client.recipes('Invalid')
      assert_not_nil Array, recipes.parse
    end

    test 'Invalid recipe id' do
      invalid_id = 1000
      recipes = @client.recipe(invalid_id)
      assert_not_nil Array, recipes.parse
    end
  end
end
