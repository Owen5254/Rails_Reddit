class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception
    protect_from_forgery with: :exception
    before_action :configure_permmited_parameters, if: :devise_controller?  
    
    protected

    def configure_permmited_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
