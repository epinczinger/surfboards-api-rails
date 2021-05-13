class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :liked_products, through: :favourites, source: 'product'

  validates :email, uniqueness: true, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 6 }
end
