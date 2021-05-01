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

  def create
    begin
      @user = current_user
      @new_surfboard = @user.surfboards.new(surfboard_params)
      @new_surfboard.save

      respond_to do |format|
        format.json {
          render :json => {
            result: "Surfboard created."
          }
        }
      end
    rescue => exception
      respond_to do |format|
        e = { result: "Error when creating." }
        format.json { render :json => e }
      end
    end
  end

  def destroy
    begin
      @surfboard = Surfboard.all.find(params[:id])
      @to_destroy = Favourite.find_by(favouriteable_id: params[:id], favouriteable_type: "Surfboard")
      if @to_destroy != nil
        @to_destroy.destroy
      end
      @surfboard.destroy
      respond_to do |format|
        format.json { render :json => { result: "Surfboard deleted"}}
      end
    rescue => exception
      respond_to do |format|
        e = { result: "You may not be allowed, or something happened." }
        format.json { render :json => e }
      end
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:model, :brand, :price, :description, :image_url)
  end
end
