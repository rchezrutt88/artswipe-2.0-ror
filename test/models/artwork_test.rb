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

require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
