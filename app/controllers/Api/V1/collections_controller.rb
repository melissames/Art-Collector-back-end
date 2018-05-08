class Api::V1::CollectionsController < ApplicationController

  def index
    # byebug
    @collections = Collection.all

    render json: @collections
  end

  def create
    query = params[:q].titleize

    collection = Collection.create(name: query)

    render json: collection
  end

end
