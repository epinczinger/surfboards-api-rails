class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user

  def index
    @surfboards = current_user.surfboards
    @accesories = current_user.accesories
    respond_to do |format|
      format.json { render json: @current_user.to_json(:include => [:accesories, :surfboards]) }
    end
  end

  def create
    @user = current_user
    @favourite = @user.favourites.new(favouriteable_id: params[:id], favouriteable_type: params[:type])
    @favourite.save
    if params[:type] === "Surfboard"
      @response = @user.surfboards.find(params[:id])
    elsif params[:type] === "Accesory"
      @response = @user.accesories.find(params[:id])
    end
    respond_to do |format|
      format.json do
        render json: @response
      end
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'Error when adding favourite.' }
      format.json { render json: e }
    end
  end

  def destroy
    @user = current_user
    @favourite = current_user.favourites.find_by(favouriteable_id: params[:id], favouriteable_type: params[:type])
    if params[:type] === "Surfboard"
      @response = @user.surfboards.find(params[:id])
    elsif params[:type] === "Accesory"
      @response = @user.accesories.find(params[:id])
    end
    @favourite.destroy
    respond_to do |format|
      format.json do
        render json: @response
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
    params.require(:favourite).permit(:favouriteable_id, :favouriteable_type, :id, :type)
  end
end
