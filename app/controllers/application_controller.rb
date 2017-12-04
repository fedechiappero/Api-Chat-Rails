# frozen_string_literal: true
class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include AbstractController::Helpers

  protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user|
        user.permit(:name, :email, :password, :password_confirmation)
      end
    end

end
