class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: [params[:id]])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.update(post_params)
    redirect_to artist_path @artist
  end

  private
    def post_params
      params.require(:artist).permit(:name, :bio)
    end
end
