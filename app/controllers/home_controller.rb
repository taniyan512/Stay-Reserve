class HomeController < ApplicationController
  def top
  end
  
  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params.permit(:user_image , :username, :self_introduce))
      flash[:notice] = "Profile was successfully updated."
      redirect_to profile_home_path
    else
      render 'profile'
    end
  end
end
