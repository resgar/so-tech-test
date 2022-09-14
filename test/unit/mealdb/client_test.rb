# frozen_string_literal: true

require 'test_helper'

module Mealdb
  class ClientTest < ActiveSupport::TestCase
    setup do
      @client = Mealdb::Client.new
    end

    test 'should get categories' do
      categories = @client.categories.parse
      assert_instance_of Array, categories['categories']
    end

    test 'should get recipes by category name' do
      recipes = @client.recipes('Seafood').parse
      assert_instance_of Array, recipes['meals']
    end

    test 'should get recipe by id' do
      recipe = @client.recipe(52_772).parse
      assert_instance_of Array, recipe['meals']
    end

    test 'invalid category name' do
      recipes = @client.recipes('Invalid').parse[:meals]
      assert_nil recipes
    end

    test 'invalid recipe id' do
      invalid_id = 1000
      recipes = @client.recipe(invalid_id).parse[:meals]
      assert_nil recipes
    end
  end
end
