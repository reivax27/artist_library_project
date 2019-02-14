class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end

  def show
    @artist = Artist.includes(:songs, :albums).find(params[:id])
  end
end
