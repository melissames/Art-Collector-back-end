class Api::V1::ArtistsController < ApplicationController

def index
  @artists = Artist.all

  @artworks = []
  @artists.each do |artist|
    @artworks << Artwork.all.select{|artwork| artwork.artist_id == artist.id}
  end

  data = @artworks.shuffle[0..9]

  render json: data
end

end
