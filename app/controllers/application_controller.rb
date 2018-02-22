class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_prameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
  	if (session[:previous_url] == root_path)
  		super
  	else
      @user.id = current_user.id
  		session[:previous_url] || user_path(@user.id)
  	end
  end


  def configure_permitted_prameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  	devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
