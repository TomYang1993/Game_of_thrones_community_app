class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if !current_user.house
      "/test"
    else
      "/usrinterface"
    end
  end



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])
  end

end
