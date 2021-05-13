class ApplicationController < ActionController::Base
  private

  def require_admin
    return if current_user.is_admin

    respond_to do |format|
      format.json { render json: { error: 'Only admins are allowed.' } }
    end
  end
end
