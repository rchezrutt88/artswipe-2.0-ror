class ArtPiece < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :artist, presence: true

end
