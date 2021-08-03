# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
store = Store.new(
  name: 'Best store in the world'
)
store.save!

coco = Ingredient.new(name: 'coco')
coco.save!
flour = Ingredient.new(name: 'flour')
flour.save!
almonds = Ingredient.new(name: 'almonds')
almonds.save!
oats = Ingredient.new(name: 'oats')
oats.save!

biscuit = Product.new(name: 'biscuit', store: store)
biscuit.save!
bread = Product.new(name: 'bread', store: store)
bread.save!
chocolate = Product.new(name: 'chocolate', store: store)
chocolate.save!

ProductIngredient.create!(ingredient: coco, product: chocolate)
ProductIngredient.create!(ingredient: almonds, product: chocolate)
ProductIngredient.create!(ingredient: flour, product: biscuit)
ProductIngredient.create!(ingredient: oats, product: biscuit)
ProductIngredient.create!(ingredient: flour, product: bread)
