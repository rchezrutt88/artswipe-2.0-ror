class AddUrlToArtPiece < ActiveRecord::Migration[5.1]
  def change
    add_column :art_pieces, :url, :string
  end
end
