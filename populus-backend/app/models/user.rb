class User < ApplicationRecord
    has_many :photos
    has_many :likes

    has_many :liked_photos, through: :likes, source: :photo
end
