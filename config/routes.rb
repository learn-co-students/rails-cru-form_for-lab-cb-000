Rails.application.routes.draw do
  resources :songs, except: [:destroy]
  resources :genres, except: [:destroy, :index]
  resources :artists, except: [:destroy, :index]
end
