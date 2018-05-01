require 'hyperclient'
require 'json'
require 'net/http'


class Api::V1::ArtworksController < ApplicationController



  def create
    xapp_token = ''

    api = Hyperclient.new("https://api.artsy.net/api/") do |api|
      api.headers['Accept'] = 'application/vnd.artsy-v2+json'
      api.headers['X-Xapp-Token'] = xapp_token
      api.connection(default: false) do |conn|
        conn.use FaradayMiddleware::FollowRedirects
        conn.use Faraday::Response::RaiseError
        conn.request :json
        conn.response :json, content_type: /\bjson$/
        conn.adapter :net_http
      end
    end


  query = params[:q].split.join('-')

  searchItem = api.search(q: query)
  artistName = searchItem.q.split("-").join(" ").titleize
  @artist = Artist.create(name: artistName)
  # byebug

  @artworks = []

  searchItem._embedded.results.each do |item|
    @artworks << Artwork.create(img: item._links.thumbnail.to_s, name: item.title.to_s, artist_id: @artist.id)
  end





  # searchItem = api.search(q: query)
  # artistName = searchItem.q.split("-").join(" ").titleize
  # artworkArtist = Artist.find_or_create_by(name: artistName)
  #
  # @artworks = []
  # searchItem._embedded.results.each do |item|
  #   @artworks << Artwork.find_or_create_by(img: item._links.thumbnail.to_s, name: item.title.to_s)
  # end
  # # @artworks = createArtworks(searchItem, artistName)
  render json: @artworks
end

# def createArtworks(searchItem, artistName)
#
# end

end
