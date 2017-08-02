class GenresController < ApplicationController
  def index
    @genres = Genre.all
    render 'index'
  end

  def show
    @genre = Genre.find(params[:id])
    render 'show'
  end

  def create
    genre = Genre.new(permit_params(:name))
    if genre.save
      redirect_to genre_path(genre.id)
    end
  end

  def new
    @genre = Genre.new
    render 'new'
  end

  def edit
    @genre = Genre.find(params[:id])
    render 'edit'
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(permit_params(:name))
    redirect_to genre_path(genre.id)
  end


  private

  def permit_params(*args)
    params.require(:genre).permit(args)
  end

end
