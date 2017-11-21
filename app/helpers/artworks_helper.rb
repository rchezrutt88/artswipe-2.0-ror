module ArtworksHelper

  def thumbs_up(artwork)
    if user_signed_in?
      link_to(
        thumbs_up_icon_style(artwork),
        upvote_artwork_url(artwork),
        method: :put,
        remote: true,
        class: 'upvote-link'
      )
    else
      thumbs_up_icon_style artwork
    end
  end

  def thumbs_down(artwork)
    if user_signed_in?
      link_to(
        thumbs_down_icon_style(artwork),
        downvote_artwork_url(artwork),
        method: :put,
        remote: true,
        class: 'downvote-link'
      )
    else
      thumbs_down_icon_style artwork
    end
  end

  def magnific_img_tag(artwork)
    link_to(
      (image_tag artwork.art_image.thumb.url || '', alt: 'image missing', class: 'img-fluid'),
      artwork.art_image.url || ''
    )
  end


  def score(artwork)
    artwork.get_upvotes.size - artwork.get_downvotes.size
  end

  private

  def thumbs_up_icon_style(artwork)
    if user_signed_in? && current_user.voted_up_on?(artwork)
      icon('thumbs-up', id: "thumbs-up-icon-#{artwork.id}")
    else
      icon('thumbs-o-up', id: "thumbs-up-icon-#{artwork.id}")
    end
  end

  def thumbs_down_icon_style(artwork)
    if user_signed_in? && current_user.voted_down_on?(artwork)
      icon('thumbs-down', id: "thumbs-down-icon-#{artwork.id}")
    else
      icon('thumbs-o-down', id: "thumbs-down-icon-#{artwork.id}")
    end
  end
end
