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
#  gallery_id              :integer
#

require 'rails_helper'

RSpec.describe Artwork, type: :model do
  describe 'voting' do
    describe 'user upvotes artwork' do
      before :each do
        @user = create(:user)
        @artwork = create(:artwork)
        @artwork.upvote_from @user
      end

      it 'should have one vote' do
        expect(@artwork.votes_for.size).to eq(1)
      end

      it 'should have one upvote' do
        expect(@artwork.get_upvotes.size).to eq(1)
      end

      it 'should have no downvotes' do
        expect(@artwork.get_downvotes.size).to eq(0)
      end

      it 'has one vote owned by the user' do
        upvote = @artwork.get_upvotes.first
        expect(upvote.voter).to eq(@user)
      end
    end

    describe 'user1 upvotes, user2 downvotes' do
      before :each do
        @user1 = create(:user)
        @user2 = create(:user)
        @artwork = create(:artwork)
        @artwork.upvote_from @user1
        @artwork.downvote_from @user2
      end

      it 'has two votes' do
        expect(@artwork.votes_for.size).to eq(2)
      end

      it 'has one upvote belong to user1' do
        expect(@artwork.get_upvotes.size).to eq(1)
        expect(@artwork.get_upvotes.first.voter).to eq(@user1)
      end

      it 'has one downvote belonging to user2' do
        expect(@artwork.get_downvotes.size).to eq(1)
        expect(@artwork.get_downvotes.first.voter).to eq(@user2)
      end
    end
  end
end
