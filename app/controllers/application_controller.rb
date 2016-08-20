class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname
  end

  def require_user
  	redirect_to root_path unless current_user
  end

  def require_admin
  	redirect_to root_path unless current_user.admin?
  end
end