class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates_uniqueness_of :product, scope: :user
  validates_presence_of :user_id, :product_id
end
