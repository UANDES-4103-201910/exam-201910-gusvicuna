class Order < ApplicationRecord
  belongs_to :user
  belongs_to :b_address, :class_name => 'Address'
  belongs_to :s_address, :class_name => 'Address'
  has_many :product_orders
end
