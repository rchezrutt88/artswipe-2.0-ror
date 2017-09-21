class Artwork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
  attr_accessor :crop_coords
  acts_as_votable
end
