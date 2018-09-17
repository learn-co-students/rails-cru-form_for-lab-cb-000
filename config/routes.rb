Rails.application.routes.draw do
  resources :songs, only: [:index, :create, :show, :update]
  resources :genres, only: [:create, :show, :update]
  resources :artists, only: [:new, :create, :show, :update]

end
