class SurfboardsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user, except: %i[index show]
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
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'Not found or not allowed.' }
      format.json { render json: e }
    end
  end

  def create
    @user = current_user
    @new_surfboard = @user.surfboards.new(surfboard_params)
    @new_surfboard.save

    respond_to do |format|
      format.json do
        render json: {
          result: 'Surfboard created.'
        }
      end
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'Error when creating.' }
      format.json { render json: e }
    end
  end

  def destroy
    @surfboard = Surfboard.all.find(params[:id])
    @to_destroy = Favourite.find_by(favouriteable_id: params[:id], favouriteable_type: 'Surfboard')
    @to_destroy&.destroy
    @surfboard.destroy
    respond_to do |format|
      format.json { render json: { result: 'Surfboard deleted' } }
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'You may not be allowed, or something happened.' }
      format.json { render json: e }
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:model, :brand, :price, :description, :image_url)
  end
end
