class SwiperController < ArtworksController
  before_action :load_artworks
  before_action :authenticate_user!, :swiper

  def swiper

  end

  private

  def load_artworks(limit = 5)
    @artworks = Artwork.first(10)
  end

end