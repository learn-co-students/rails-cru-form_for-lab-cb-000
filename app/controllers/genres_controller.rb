class GenresController < ApplicationController
  def show
    @genre = genre_by_id
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = genre_by_id
  end

  def update
    genre = genre_by_id
    genre.update(post_params(:name))

    redirect_to genre
  end

  def create
    genre = Genre.new(post_params(:name))
    genre.save

    redirect_to genre
  end

  private

  def genre_by_id
    Genre.find_by(id: params[:id])
  end
end
