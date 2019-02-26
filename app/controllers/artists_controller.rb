class ArtistsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]

  def index
    @artist = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(restrict_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    # raise params.inspect
    @artist.update(restrict_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def set_id
    @artist = Artist.find(params[:id])
  end

  def restrict_params(*args)
    params.require(:artist).permit(*args)
  end
end
