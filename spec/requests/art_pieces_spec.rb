require 'rails_helper'

RSpec.describe "ArtPieces", type: :request do
  describe "GET /art_pieces" do
    it "works! (now write some real specs)" do
      get art_pieces_path
      expect(response).to have_http_status(200)
    end
  end
end
