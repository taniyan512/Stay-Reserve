class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  private
  
  def configure_permitted_parameters    
    added_attrs = [ :username,
                    :email,
                    :password,
                    :password_confirmation,
                    :user_image,
                    :self_introduce,
                  ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end



end
