class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user

  def index
    @favourites = current_user.liked_products.all
    respond_to do |format|
      format.json { render json: @favourites }
    end
  end

  def create
    @favourite = current_user.favourites.new(product_id: params[:id])

    @favourite.save
    render json: { result: "Favourite created." }
  rescue StandardError
    render json: { result: 'Error when adding favourite.' }
  end

  def destroy
    @to_destroy = current_user.favourites.find_by(favourite_params)
    @to_destroy.destroy
    render json: { result: "Favourite deleted." }
  rescue StandardError
    render json: { result: "Error when deleting." }
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :product_id)
  end
end
