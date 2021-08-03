class Product < ApplicationRecord
  belongs_to :store
  has_many :product_ingredients
  has_many :ingredients, through: :product_ingredients
end
