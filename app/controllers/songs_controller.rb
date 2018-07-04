class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]

  def index # GET
    @songs = Song.all
  end

  def new # GET
    @song = Song.new
  end

  def create # POST
    @song = Song.create!( song_params(:name, :artist_id, :genre_id) )
    redirect_to song_path(@song)
  end

  def show # GET
  end

  def edit # GET
  end

  def update # POST
    @song.update( song_params(:name, :artist_id, :genre_id) )
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
