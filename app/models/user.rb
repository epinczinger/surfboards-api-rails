class User < ApplicationRecord
    has_many :favourites
    has_many :surfboards, through: :favourites
    has_secure_password
end
