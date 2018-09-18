Rails.application.routes.draw do
  resources :songs, only: [:new, :index, :create, :show, :update]
  resources :genres, only: [:new, :index, :create, :show, :edit, :update]
  resources :artists, only: [:new, :create, :show, :edit, :update]
end
