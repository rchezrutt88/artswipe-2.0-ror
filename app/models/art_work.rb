class ArtWork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
end
