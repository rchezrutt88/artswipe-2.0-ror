Rails.application.routes.draw do
  resources :galleries
  devise_for :users

  root 'application#show'

  resources :artworks do
    member do
      put 'upvote', to: 'artworks#upvote'
      put 'downvote', to: 'artworks#downvote'
    end
  end

  get 'swiper', to: 'swiper#swiper'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
