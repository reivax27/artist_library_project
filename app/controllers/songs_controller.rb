class SongsController < ApplicationController
  def index
    @songs = Song.includes(:artist).order(:title)
  end

  def show
    @song = Song.includes(:artist).find(params[:id])
  end
end
