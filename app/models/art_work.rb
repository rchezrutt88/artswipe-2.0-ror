class ArtWork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
  attr_accessor :crop_coords
end
