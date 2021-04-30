class Accesory < ApplicationRecord
    has_many :favourites, as: :favouriteable
    has_many :users, through: :favourites
end
