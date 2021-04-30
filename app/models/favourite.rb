class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :surfboard
  validates_uniqueness_of :user, scope: :surfboard 
end
