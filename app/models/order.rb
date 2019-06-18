class Order < ApplicationRecord
  belongs_to :user
  belongs_to :b_address
  belongs_to :s_address
end
