require 'rails_helper'

RSpec.describe ArtworksController, :type => :controller do
  describe 'GET index' do
    it 'responds successfully' do
      artwork = Artwork.create
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'loads all of the artworks into @artworks' do
      artwork1, artwork2 = Artwork.create!, Artwork.create!
      get :index
      expect(assigns(:artworks)).to eq([artwork1, artwork2])
    end
  end

  describe 'PATCH #upvote' do
    before :each do
      @artwork = create(:artwork)
      @user = create(:user)
    end
    it 'fails to upvote without user' do
      patch :upvote, params: { id: @artwork }
      expect(@artwork.votes_for.size).to eq(0)
    end
    it 'it upvotes with signed in user' do
      sign_in(@user)
      patch :upvote, params: { id: @artwork }
      expect(@artwork.votes_for.size).to eq(1)
    end

  end
end