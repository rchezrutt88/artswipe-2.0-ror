# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#

class Gallery < ApplicationRecord
  has_many :artworks
  validates_uniqueness_of :name
end
