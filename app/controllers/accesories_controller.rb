class AccesoriesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user, except: %i[index show]
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
    respond_to do |format|
      e = { result: 'Not found or not allowed.' }
      format.json { render json: e }
    end
  end

  def create
    @user = current_user
    @new_accesory = @user.accesories.new(accesory_params)
    @new_accesory.save

    respond_to do |format|
      format.json do
        render json: {
          result: 'Accesory created.'
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
    @accesory = Accesory.all.find(params[:id])
    @to_destroy = Favourite.find_by(favouriteable_id: params[:id], favouriteable_type: 'Accesory')
    @to_destroy&.destroy
    @accesory.destroy
    respond_to do |format|
      format.json { render json: { result: 'Accesory deleted' } }
    end
  rescue StandardError => e
    respond_to do |format|
      e = { result: 'You may not be allowed, or something happened.' }
      format.json { render json: e }
    end
  end

  private

  def accesory_params
    params.require(:accesory).permit(:model, :brand, :description, :price)
  end
end
