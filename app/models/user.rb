class User < ApplicationRecord
  has_many :orders
  has_many :addresses

  validates :email, :f_name, :l_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
