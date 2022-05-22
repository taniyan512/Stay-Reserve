class HomeController < ApplicationController

  def top
    @q = Room.ransack(params[:q])
  end

  def area_serch
    @q = Room.ransack(params[:q])
    @results = @q.result
  end
  
  def key_serch
    @q = Room.ransack(params[:q])
    @results = @q.result 
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
      redirect_to "/"
    else
      render 'profile'
    end
  end

end
