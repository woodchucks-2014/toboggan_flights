class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #helper_method :current_user

  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :phone_number, :password, :password_confirmation) }
	  end


  #private

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
# end
end
