class Artwork < ApplicationRecord
  belongs_to :artist
  has_many :collections, through: :artwork_collections
  has_many :artwork_collections
  has_many :mood_boards, through: :artwork_moodboards
  has_many :artwork_moodboards
  has_many :tags, through: :artwork_tags
  has_many :artwork_tags
  has_many :colors
  has_many :similarities
end
