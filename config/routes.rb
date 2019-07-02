Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]


#  Helper	          HTTP Verb	   Path	               Controller#Action
#  Path / Url
#  songs_path	      GET	     /songs(.:format)	          songs#index
#                   POST	   /songs(.:format)           songs#create
#  new_song_path	  GET	     /songs/new(.:format)	      songs#new
#  edit_song_path	  GET	     /songs/:id/edit(.:format)	songs#edit
#  song_path	      GET	     /songs/:id(.:format)	      songs#show
#                   PATCH	   /songs/:id(.:format)	      songs#update
#                   PUT	     /songs/:id(.:format)	      songs#update
#  genres_path	    GET	     /genres(.:format)	        genres#index
#                   POST	   /genres(.:format)	        genres#create
#  new_genre_path	  GET	     /genres/new(.:format)	    genres#new
#  edit_genre_path	GET	     /genres/:id/edit(.:format)	genres#edit
#  genre_path	      GET	     /genres/:id(.:format)	    genres#show
#                   PATCH	   /genres/:id(.:format)	    genres#update
#                   PUT	     /genres/:id(.:format)	    genres#update
#  artists_path	    GET	     /artists(.:format)	        artists#index
#                   POST	   /artists(.:format)	        artists#create
#  new_artist_path	GET	     /artists/new(.:format)	    artists#new
#  edit_artist_path	GET	     /artists/:id/edit(.:format)	artists#edit
#  artist_path	    GET	     /artists/:id(.:format)	    artists#show
#                   PATCH	   /artists/:id(.:format)	    artists#update
#                   PUT	     /artists/:id(.:format)	    artists#update
    

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
