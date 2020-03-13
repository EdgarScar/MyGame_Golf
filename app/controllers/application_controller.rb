class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

#Permit additional attributes to be added to User model created with devise 
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name, :first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:display_name, :first_name, :last_name])
    end
 

end
