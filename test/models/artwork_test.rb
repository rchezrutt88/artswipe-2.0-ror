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
#

require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
