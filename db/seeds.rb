# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "open-uri"

puts "Cleaning Ingredient database"
Ingredient.destroy_all
puts "Database Cleaned"

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

user_serialized = URI.open(url).read
ingredients = JSON.parse(user_serialized)["drinks"]

# ingredients = JSON.parse(URI.open(url).read)

ingredients.each do |ingredient|
  puts "Creating Ingredient: #{ingredient['strIngredient1']}"
  Ingredient.create(
    name: ingredient['strIngredient1']
  )
end

puts "102 Ingredients created"
