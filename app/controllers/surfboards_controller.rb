class SurfboardsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user, except: [:index, :show]
  before_action :require_admin, only: %i[destroy create update]

  def index
    @surfboards = Surfboard.all

    respond_to do |format|
      format.json { render json: @surfboards }
    end
  end

  def show
    @surfboard = Surfboard.all.find(params[:id])
    respond_to do |format|
      format.json { render json: @surfboard }
    end
  rescue StandardError => error
    respond_to do |format|
      error = { result: 'Not found or not allowed.' }
      format.json { render :json => error }
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:model, :brand, :price, :description, :image_url)
  end
end
