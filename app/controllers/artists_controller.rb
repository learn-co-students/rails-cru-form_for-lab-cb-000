class ArtistsController < ApplicationController

	def show
		# display each of the song's genre and artist, 
		# and link to the respective genre and artist show pages.
		
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create

		# code to inspect / sanitize and save here

		redirect_to artist_path(@artist)
	end



end
