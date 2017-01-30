class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :devise_layout

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!



  private

  def devise_layout
    devise_controller? ? 'devise' : 'application'
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    root_path
  end
end
