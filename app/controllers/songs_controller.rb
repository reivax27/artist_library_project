class SongsController < ApplicationController
  def index
    @songs = Song.order(:title)
  end

  def show
    @song = Song.find(params[:id])
  end
end
