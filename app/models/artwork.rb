# == Schema Information
#
# Table name: artworks
#
#  id           :integer          not null, primary key
#  title        :string
#  artist       :string
#  date_painted :string
#  location     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  art_image    :string
#

class Artwork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
  attr_accessor :crop_coords
  acts_as_votable
end
