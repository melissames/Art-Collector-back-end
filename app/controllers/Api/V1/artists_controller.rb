class Api::V1::ArtistsController < ApplicationController

def index
  @artists = Artist.all

  @artworks = {}
  @artists.each do |artist|
    @artworks[artist.name] = []
    @artworks[artist.name] << Artwork.all.select{|artwork| artwork.artist_id == artist.id}
  end

  render json: @artworks
end

end
