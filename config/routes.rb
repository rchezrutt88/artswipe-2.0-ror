Rails.application.routes.draw do

  root 'art_works#index'

  resources :art_works
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
