class SongsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(restrict_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def show
  end

  def update
    @song.update(restrict_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
  end

  private

  def set_id
    @song = Song.find(params[:id])
  end

  def restrict_params(*args)
    params.require(:song).permit(*args)
  end

end
