class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:name)
  end

  def show
    @album = Album.find(params[:id])
  end
end
