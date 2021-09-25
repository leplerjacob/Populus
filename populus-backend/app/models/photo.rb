class Photo < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :liked_by, through: :likes, source: :user
end
