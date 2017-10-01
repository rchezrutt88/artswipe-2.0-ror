class AddGalleryToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_reference :artworks, :gallery, foreign_key: true
  end
end
