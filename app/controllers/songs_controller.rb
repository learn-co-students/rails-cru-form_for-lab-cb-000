class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
    def songs_params
       # params.require(:song).permit(:)
    end
end
