require 'rails_helper'

RSpec.describe ArtPiece, type: :model do

  describe '#title' do
    it { should validate_presence_of(:title) }
  end

  describe '#artist' do
    it { should validate_presence_of(:artist) }
  end

end
