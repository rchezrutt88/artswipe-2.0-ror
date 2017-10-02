class SwiperController < ArtworksController
  before_action :swiper, :load_artworks

  def swiper

  end

  private

  def load_artworks(limit = nil)
    @artworks = Artwork.first(3)
  end

end