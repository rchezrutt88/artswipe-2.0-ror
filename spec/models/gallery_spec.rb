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

require 'rails_helper'

RSpec.describe Gallery, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
