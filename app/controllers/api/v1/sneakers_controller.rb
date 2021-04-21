class Api::V1::SneakersController < ApplicationController

  def index
    @sneakers = Sneaker.all

    render json: SneakerSerializer.new(@sneakers).serializable_hash.to_json
  end

  def show
    @sneaker = Sneaker.find_by(slug: params[:slug])

    render json: SneakerSerializer.new(@sneaker).serializable_hash.to_json
  end

end
