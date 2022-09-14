# frozen_string_literal: true

json.id recipe['idMeal']
json.name recipe['strMeal']
json.drink_alternate recipe['strDrinkAlternate']
json.category recipe['strCategory']
json.area recipe['strArea']
json.instructions recipe['strInstructions']
json.tags recipe['strTags'].split(',')
json.youtube_url recipe['strYoutube']
json.ingredients recipe.select { |key, _| key.to_s.match(/^strIngredient\d+/) }.values.compact_blank
json.measures recipe.select { |key, _| key.to_s.match(/^strMeasure\d+/) }.values.compact_blank
json.source recipe['strSource']
json.image_source recipe['strImageSource']
json.creative_commons_confirmed recipe['strCreativeCommonsConfirmed']
json.date_modified recipe['dateModified']
