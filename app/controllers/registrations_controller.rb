class RegistrationsController < Devise::RegistrationsController

    protect_from_forgery with: :exception, prepend: true

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :second_name, 
     :email, :password, :password_confirmation])
     
     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, 
     :email, :password, :password_confirmation, :current_password])
     end
  end