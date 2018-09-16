Rails.application.routes.draw do
  resources :songs, only: [:create, :show, :update]
  resources :genres, only: [:create, :show, :update]
  resources :artists, only: [:create, :show, :update]

end
