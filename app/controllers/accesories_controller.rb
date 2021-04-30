class AccesoriesController < ApplicationController
  before_action :authenticate_and_set_user
  skip_before_action :verify_authenticity_token
  before_action :require_admin, only: %i[destroy create update]

  def index
    @accesories = Accesory.all

    respond_to do |format|
      format.json { render json: @accesories }
    end
  end

  def show
    @accesory = Accesory.all.find(params[:id])
    respond_to do |format|
      format.json { render json: @accesory }
    end
  rescue StandardError => e
    respond_to do |_format|
      e = { result: 'Not found or not allowed.' }
    end
  end

  def create
    begin
      @user = current_user
      @new_accesory = @user.accesories.new(accesory_params)
      @new_accesory.save

      respond_to do |format|
        format.json {
          render :json => {
            result: "Accesory created."
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

  private

  def require_admin
    unless current_user.is_admin
      respond_to do |format|
        format.json { render json: { error: 'Only admin are allowed' } }
      end
    end
  end

  def accesory_params
    params.require(:accesory).permit(:model, :brand, :description, :price)
  end
end
