class GenresController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
  end

  def create
    @genre = Genre.new(restrict_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre.update(restrict_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
  end

  private

  def set_id
    @genre = Genre.find(params[:id])
  end

  def restrict_params(*args)
    params.require(:genre).permit(*args)
  end
end
