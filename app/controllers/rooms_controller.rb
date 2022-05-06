class RoomsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @rooms = @user.rooms
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_introduce, :price, :adress, :room_image))
    @room.user_id = current_user.id
    if @room.save
      flash[:notice] = "Room was successfully created."
      redirect_to room_path(@room)
    else
      render "new" 
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def desteroy
  end
end
