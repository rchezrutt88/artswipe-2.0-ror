class AddArtImagesToArtWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :art_works, :art_image, :string
  end
end
