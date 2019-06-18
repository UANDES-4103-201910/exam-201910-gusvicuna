class Product < ApplicationRecord
  has_many :product_orders

  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :brand, :model, :price, :s_description, :l_description, presence: true

  def all_brands
    total=[]
    allproducts=Product.all
    allproducts.each do |p|
      if total.include? p.brand
      else
        total.push(p.brand)
      end
    end
    total
  end
end
