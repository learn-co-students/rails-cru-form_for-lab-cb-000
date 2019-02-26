class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = song.create(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def new
  end

  def edit
      @song = song.find(params[:id])
  end

  def update
    @song = song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

end
