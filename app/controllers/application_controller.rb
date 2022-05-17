class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?  
    before_action :set_q, only: [:area_index, :area_serch, :key_index, :key_serch]

    def area_index
      @rooms = Room.all
    end
  
    def area_serch
      @results = @q.result
    end
  
    def key_index
      @room = Room.all
    end
  
    def key_serch
      @results = @q.result 
    end
  
    def after_sign_in_path_for(resource) #ログイン後にプロフィール画面に遷移
      profile_home_path
    end  

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

  def set_q
    @q = Room.ransack(params[:q])
  end



end
