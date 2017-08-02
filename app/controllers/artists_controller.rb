class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render 'index'
  end

  def show
    @artist = Artist.find(params[:id])
    render 'show'
  end

  def create
    artist = Artist.new(permit_params(:name, :bio))
    if artist.save
      redirect_to artist_path(artist.id)
    end
  end

  def new
    @artist = Artist.new
    render 'new'
  end

  def edit
    @artist = Artist.find(params[:id])
    render 'edit'
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(permit_params(:name, :bio))
    redirect_to artist_path(artist.id)
  end


  private

  def permit_params(*args)
    params.require(:artist).permit(args)
  end

end
