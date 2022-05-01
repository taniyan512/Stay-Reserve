class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room,new(params,require(:room).permit(:room_name, :room_introduce, :price, :adress, :image))
    if @room.save
      flash[:notice] = "Room was successfully created."
      redirect_to room_path
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
