class CreateArtPieces < ActiveRecord::Migration[5.1]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
