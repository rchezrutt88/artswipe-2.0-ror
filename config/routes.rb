Rails.application.routes.draw do

  devise_for :users

  root 'application#show'

  resources :artworks do
    member do
      patch 'like', to: 'artworks#upvote'
      patch 'disklike', to: 'artworks#downvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
