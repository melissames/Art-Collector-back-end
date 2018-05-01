class MoodBoard < ApplicationRecord
  has_many :artworks, through: :artwork_moodboards
  has_many :artwork_moodboards
end
