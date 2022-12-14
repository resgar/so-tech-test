# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test 'should get index' do
    VCR.use_cassette("categories") do
      get categories_url, as: :json
    end
    assert_response :success
  end
end
