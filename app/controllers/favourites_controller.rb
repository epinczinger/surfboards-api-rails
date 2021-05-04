class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user

  def index
    @favourites = current_user.FavouritesController
    respond_to do |format|
      format.json { render json: @favourites }
    end
  end

  def create
    @favourite = current_user.favourites.new(favouriteable_id: params[:id], favouriteable_type: params[:type])
    @favourite.save
    respond_to do |format|
      format.json do
        render json: {
          result: 'Favourite created.'
        }
      end
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'Error when adding favourite.' }
      format.json { render json: e }
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(favouriteable_id: params[:id], favouriteable_type: params[:type])
    @favourite.destroy
    respond_to do |format|
      format.json do
        render json: {
          result: 'Favourite deleted.'
        }
      end
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'Error when deleting favourite.' }
      format.json { render json: e }
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit(:favouriteable_id, :favouriteable_type)
  end
end
