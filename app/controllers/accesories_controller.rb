class AccesoriesController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    @accesories = current_user.accesories

    respond_to do |format|
      format.json { render json: @accesories }
    end
  end
end
