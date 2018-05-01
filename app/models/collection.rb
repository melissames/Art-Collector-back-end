class Collection < ApplicationRecord
  has_many :artworks, through: :artwork_collections
end
