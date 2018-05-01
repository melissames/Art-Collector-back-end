class ArtworkMoodboard < ApplicationRecord
  belongs_to :artwork
  belongs_to :mood_board
end
