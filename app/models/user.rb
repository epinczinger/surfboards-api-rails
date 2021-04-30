class User < ApplicationRecord
    has_many :favourites
    has_many :surfboards, through: :favourites, source: :favouriteable, source_type: 'Surfboard'
    has_secure_password
end
