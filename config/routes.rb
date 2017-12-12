Rails.application.routes.draw do
  root 'application#show'

  devise_for :admins, controllers: {registrations: 'admins/registrations'}
  devise_for :users

  namespace :admin do
    resources :artworks
    resources :galleries
  end

  resources :galleries, except: [:create, :edit, :destroy]

  resources :artworks, except: [:create, :edit, :destroy] do
    member do
      patch 'upvote', to: 'artworks#upvote'
      patch 'downvote', to: 'artworks#downvote'
    end
  end

  get 'swiper', to: 'swiper#swiper'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
