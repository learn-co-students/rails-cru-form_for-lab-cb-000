class SongsController < ApplicationController
    def show
        @song = find_song
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def create
        @song = Song.create(song_params)
        redirect_to @song
    end

    def edit
        @song = find_song
    end

    def update
        @song = find_song
        @song.update(song_params)
        redirect_to @song
    end

    def index
        @songs = Song.all
    end


    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song
        Song.find(params[:id])
    end
end
