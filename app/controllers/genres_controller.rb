class GenresController < ApplicationController
  def index

  end

  def new
    @genre = Genre.new
  end
  
  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_parameters)
    @genre.save

    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_parameters)

    redirect_to genre_path(@genre)
  end

  private

  def genre_parameters
    params.require(:genre).permit(:name)
  end
end