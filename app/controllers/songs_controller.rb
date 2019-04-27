class SongsController < ApplicationController


  def index
    @songs = Song.all  #displays songs
  end

  def new
		@song = Song.new #directs to new song page
  end

  def create
    @song = Song.new(song_params) #take in song params add it to a new song
    @song.save #save the new song
    redirect_to song_path(@song) #and redirect to songs
  end

  def edit
    @song = Song.find(params[:id]) #find the song by id
  end

  def update
    @song = Song.find(params[:id]) #find the song by id
    @song.update(song_params) #update the song
    redirect_to song_path(@song) #redirect to songs
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  		def song_params
  			params.require(:song).permit(:name, :artist_id, :genre_id)
  		end
end
