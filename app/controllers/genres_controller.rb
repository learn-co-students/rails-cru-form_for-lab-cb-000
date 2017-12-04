class GenresController < ApplicationController
    include ApplicationHelper
    
    def show
        @genre = Genre.find(params[:id])
    end

    def new 
        @genre = Genre.new
    end

    def create
        genre = Genre.create(strong_params(:name))
        redirect_to genre_path(genre)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        genre = Genre.find(params[:id])
        genre.update(strong_params(:name))
        redirect_to genre_path(genre)
    end
end
