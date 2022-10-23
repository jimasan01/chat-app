class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_patameters, if: :devise_controller?

  private
  def configure_permitted_patameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
