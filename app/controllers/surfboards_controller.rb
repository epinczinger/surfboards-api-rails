class SurfboardsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user
  before_action :require_admin, only: %i[destroy create update]

  def index
    @surfboards = Surfboard.all

    respond_to do |format|
      format.json { render json: @surfboards }
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:model, :brand, :price, :description, :image_url)
  end
end
