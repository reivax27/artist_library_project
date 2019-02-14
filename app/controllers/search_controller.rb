class SearchController < ApplicationController
  def results
    @query = params[:q]
    @artists = Artist.where('name LIKE ?', "%#{@query}%")
    @albums = Album.where('name LIKE ?', "%#{@query}%")
    @songs = Song.where('title LIKE ?', "%#{@query}%")
  end
end
