require 'rails_helper'

RSpec.describe ArtPiece, type: :model do

  it { should validate_uniqueness_of(:title) }

end
