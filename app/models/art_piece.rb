class ArtPiece < ApplicationRecord
  validates :title, uniqueness: true

end
