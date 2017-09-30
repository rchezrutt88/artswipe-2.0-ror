class AddArtworksToGallery < ActiveRecord::Migration[5.1]
  def change
    add_reference :galleries, :artwork, foreign_key: true
  end
end
