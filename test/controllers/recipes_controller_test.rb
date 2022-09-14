# frozen_string_literal: true

require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test 'with valid category ID should get index' do
    VCR.use_cassette("category") do
      get category_recipes_url(1), as: :json
      assert_response :success
    end
  end

  test 'with invalid category ID should return error' do
    VCR.use_cassette("failed_category") do
      get category_recipes_url(1000), as: :json
      assert_response :not_found
    end
  end

  test 'with valid ID should return the recipe' do
    VCR.use_cassette("recipe") do
      get recipe_url(52_874), as: :json
      assert_response :success
    end
  end

  test 'with invalid ID should return error' do
    VCR.use_cassette("failed_recipe") do
      get recipe_url(1), as: :json
      assert_response :not_found
    end
  end
end
