require "rails_helper"

RSpec.describe ArtworksController, type: :routing do
  describe "routing" do

    it "routes to #upvote" do
      expect(:put => "/artworks/1").to route_to("artworks#show", :id => "1")
    end

  end
end
