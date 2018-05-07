class Api::V1::CollectionsController < ApplicationController

  def create
    query = params[:q].titleize

    collection = Collection.create(name: query)

    render json: collection
  end

end
