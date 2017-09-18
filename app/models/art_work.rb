class ArtWork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
  attr_accessor :crop_x1, :crop_y1, :crop_x2, :crop_y2, :crop_width, :crop_height
end
