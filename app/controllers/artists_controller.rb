require 'pry'
class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    # binding.pry
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
  end


end
