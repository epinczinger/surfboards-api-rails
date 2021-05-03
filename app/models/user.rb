class User < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :surfboards, through: :favourites, source: :favouriteable, source_type: 'Surfboard'
  has_many :accesories, through: :favourites, source: :favouriteable, source_type: 'Accesory'
  has_secure_password
  validates :email, uniqueness: true
end
