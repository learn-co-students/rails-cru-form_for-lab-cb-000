class SongsController < ApplicationController

  def index
    @songs = Song.all
    render 'index'
  end

  def show
    @song = Song.find(params[:id])
    render 'show'
  end

  def create
    #check for artist and genre existance
    params[:artist_id] = nil unless Artist.find_by(id: params[:artist_id])
    params[:genre_id] = nil unless Genre.find_by(id: params[:genre_id])

    song = Song.new(permit_params(:name, :artist_id, :genre_id))
    if song.save
      redirect_to song_path(song.id)
    end
  end

  def new
    @song = Song.new
    render 'new'
  end

  def edit
    @song = Song.find(params[:id])
    render 'edit'
  end

  def update
    song = Song.find(params[:id])
    song.update(permit_params(:name, :artist_id, :genre_id))
    redirect_to song_path(song.id)
  end


  private

  def permit_params(*args)
    params.require(:song).permit(args)
  end

end
