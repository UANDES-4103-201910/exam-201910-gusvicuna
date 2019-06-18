class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :addresses

  validates :email, :f_name, :l_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
