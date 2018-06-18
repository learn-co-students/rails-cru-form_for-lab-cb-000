Rails.application.routes.draw do

  # concern :songable do
    # resources :songs
  # end

  resources :songs

  scope shallow_prefix: "nested" do
    resources :artists, :genres do
      resources :songs, shallow: true
    end
  end



end

