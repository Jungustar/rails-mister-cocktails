require 'json'
require 'open-uri'

puts "destroy existing data"
Ingredient.destroy_all

URL = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data_serialized = open(URL).read
data = JSON.parse(data_serialized)

array_of_ingredients = data["drinks"]

array_of_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
