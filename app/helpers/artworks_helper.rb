module ArtworksHelper
  def thumbs_up (artwork)
    link_to(
      icon('thumbs-up'),
      upvote_artwork_url(artwork),
      method: :put,
      remote: true
    )
  end

  def thumbs_down (artwork)
    link_to(
      icon('thumbs-down'),
      downvote_artwork_url(artwork),
      method: :put,
      remote: true
    )
  end
end
