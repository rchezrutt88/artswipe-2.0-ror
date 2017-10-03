module SwiperHelper
  def up_vote(artwork)
    link_to(nil, upvote_artwork_url(artwork), remote: true, method: :put, class: 'swiper-upvote-link')
  end
  def down_vote(artwork)
    link_to(nil, downvote_artwork_url(artwork), remote: true, method: :put, class: 'swiper-downvote-link')
  end
end