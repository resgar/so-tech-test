# frozen_string_literal: true

json.id recipe['idMeal']
json.name recipe['strMeal']
json.thumbnail recipe['strMealThumb']
json.url recipe_url(recipe['idMeal'], format: :json)
