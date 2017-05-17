class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def create
    artist = Artist.new(post_params(:name, :bio))
    artist.save

    redirect_to artist
  end

  def update
    artist = Artist.find_by(id: params[:id])
    artist.update(post_params(:name, :bio))

    redirect_to artist
  end
end
