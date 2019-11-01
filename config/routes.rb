Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :artists, only: [:create, :update, :show, :new, :edit]
  resources :genres, only: [:create, :update, :show, :new, :edit]
  resources :songs, only: [:create, :update, :show, :edit, :new, :index]
end
