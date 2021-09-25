class User < ApplicationRecord
    has_many :photos
    belongs_to :like
end
