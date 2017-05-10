require "rails_helper"

RSpec.describe ArtPiecesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/art_pieces").to route_to("art_pieces#index")
    end


    it "routes to #show" do
      expect(:get => "/art_pieces/1").to route_to("art_pieces#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/art_pieces").to route_to("art_pieces#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/art_pieces/1").to route_to("art_pieces#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/art_pieces/1").to route_to("art_pieces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/art_pieces/1").to route_to("art_pieces#destroy", :id => "1")
    end

  end
end
