class SwiperController < ArtworksController
  before_action :load_artworks
  before_action :authenticate_any!, :swiper

  layout 'artworks'

  def swiper
  end

  private

  def load_artworks(limit = 10)
    @artworks = Artwork.first(limit)
  end

end