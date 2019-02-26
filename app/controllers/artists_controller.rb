class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end


end
