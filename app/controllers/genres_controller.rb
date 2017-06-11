class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  def destroy
  end

  private
  def set_genre
    @genre = Genre.find(params[:id])
  end

  def post_params(*args)
    params.require(:genre).permit(*args)
  end
end
