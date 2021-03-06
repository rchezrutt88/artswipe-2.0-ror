# == Schema Information
#
# Table name: artworks
#
#  id                      :integer          not null, primary key
#  title                   :string
#  artist                  :string
#  date_painted            :string
#  location                :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  art_image               :string
#  cached_votes_total      :integer          default(0)
#  cached_votes_score      :integer          default(0)
#  cached_votes_up         :integer          default(0)
#  cached_votes_down       :integer          default(0)
#  cached_weighted_score   :integer          default(0)
#  cached_weighted_total   :integer          default(0)
#  cached_weighted_average :float            default(0.0)
#  gallery_id              :integer
#

class Artwork < ApplicationRecord
  mount_uploader :art_image, ArtImageUploader
  attr_accessor :crop_coords
  belongs_to :gallery, optional: true
  acts_as_votable

  validates_uniqueness_of :title
  validates_presence_of :title, :artist, :art_image
end
