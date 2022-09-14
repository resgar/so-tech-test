# frozen_string_literal: true

json.id category['idCategory']
json.name category['strCategory']
json.thumbnail category['strCategoryThumb']
json.description category['strCategoryDescription']
json.recipes_url category_recipes_url(category['idCategory'], format: :json)
