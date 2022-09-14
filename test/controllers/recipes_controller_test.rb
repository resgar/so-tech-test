# frozen_string_literal: true

require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test 'with valid category ID should get index' do
    get category_recipes_url(1), as: :json
    assert_response :success
  end

  test 'with invalid category ID should return error' do
    get category_recipes_url(1000), as: :json
    assert_response :not_found
  end

  test 'with valid ID should return the recipe' do
    get recipe_url(52_874), as: :json
    assert_response :success
  end

  test 'with invalid ID should return error' do
    get recipe_url(1), as: :json
    assert_response :not_found
  end
end
