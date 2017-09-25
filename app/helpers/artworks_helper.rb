module ArtworksHelper
  def thumbs_up(artwork)
    link_to(
      thumbs_up_icon_style(artwork),
      upvote_artwork_url(artwork),
      method: :put,
      remote: true
    )
  end

  def thumbs_down(artwork)
    link_to(
      thumbs_down_icon_style(artwork),
      downvote_artwork_url(artwork),
      method: :put,
      remote: true
    )
  end

  def magnific_img_tag(artwork)
    link_to(
      (image_tag artwork.art_image.thumb.url, size: 200, alt: 'image missing'),
      artwork.art_image.url
    )
  end

  def score(artwork)
    artwork.get_upvotes.size - artwork.get_downvotes.size
  end

  private

  def thumbs_up_icon_style(artwork)
    if current_user.voted_up_on? artwork
      icon('thumbs-up')
    else
      icon('thumbs-o-up')
    end
  end

  def thumbs_down_icon_style(artwork)
    if current_user.voted_down_on? artwork
      icon('thumbs-down')
    else
      icon('thumbs-o-down')
    end
  end
end
