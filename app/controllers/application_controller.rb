class ApplicationController < ActionController::Base
  private

  def require_admin
    unless current_user.is_admin
      respond_to do |format|
        format.json { render json: { error: 'Only admin are allowed' } }
      end
    end
  end
end
