class CreateArtWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :art_works do |t|
      t.string :title
      t.string :artist
      t.string :date_painted
      t.string :location

      t.timestamps
    end
  end
end
