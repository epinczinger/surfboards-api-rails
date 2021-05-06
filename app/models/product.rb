class Product < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :likers, through: :favourites, source: 'user'

  validates_uniqueness_of :model
  validates_presence_of :model, :brand, :price, :description, :image_url, :category

end
