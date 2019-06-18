class Product < ApplicationRecord
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :brand, :model, :price, :s_description, :l_description, presence: true
end