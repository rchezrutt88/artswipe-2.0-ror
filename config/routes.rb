Rails.application.routes.draw do
  devise_for :admins, controllers: {registrations: 'admins/registrations'}
  resources :galleries
  devise_for :users

  root 'application#show'

  resources :artworks do
    member do
      patch 'upvote', to: 'artworks#upvote'
      patch 'downvote', to: 'artworks#downvote'
    end
  end

  get 'swiper', to: 'swiper#swiper'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
