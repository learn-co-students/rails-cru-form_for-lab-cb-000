class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.new(artist_params(:name))
    if artist.save
      redirect_to artist
    else
      redirect_to new_artist_path
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.name = artist_params(:name)
    artist.bio = artist_params(:bio)
    if artist.save
      redirect_to artist
    else
      redirect_to edit_artist_path(artist)
    end
  end

  private
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
