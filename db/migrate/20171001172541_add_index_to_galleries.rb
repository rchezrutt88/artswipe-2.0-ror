class AddIndexToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_index :galleries, :name, unique: true
  end
end
