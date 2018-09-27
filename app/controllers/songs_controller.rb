class SongsController < ApplicationController
  def new
  end

  def index
    @songs = Song.all
  end

  def create
    @song = Song.new(song_params(:name, :genre_id, :artist_id))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
