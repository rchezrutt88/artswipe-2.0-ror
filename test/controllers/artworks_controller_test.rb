require 'test_helper'

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork = art_works(:one)
  end

  test 'should get index' do
    get artworks_url
    assert_response :success
  end

  test 'should get new' do
    get new_artwork_url
    assert_response :success
  end

  test 'should create art_work' do
    assert_difference('ArtWork.count') do
      post artworks_url, params: { artwork: { artist: @artwork.artist, date_painted: @artwork.date_painted, location: @artwork.location, title: @artwork.title } }
    end

    assert_redirected_to artwork_url(Artwork.last)
  end

  test 'should show art_work' do
    get artwork_url(@artwork)
    assert_response :success
  end

  test 'should get edit' do
    get edit_artwork_url(@artwork)
    assert_response :success
  end

  test 'should update art_work' do
    patch artwork_url(@artwork), params: { artwork: { artist: @artwork.artist, date_painted: @artwork.date_painted, location: @artwork.location, title: @artwork.title } }
    assert_redirected_to artwork_url(@artwork)
  end

  test 'should destroy art_work' do
    assert_difference('ArtWork.count', -1) do
      delete artwork_url(@artwork)
    end

    assert_redirected_to artworks_url
  end
end
