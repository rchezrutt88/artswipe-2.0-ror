class AddLatitudeAndLongitudeToGallery < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :latitude, :float
    add_column :galleries, :longitude, :float
  end
end
