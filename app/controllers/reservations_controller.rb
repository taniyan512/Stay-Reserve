class ReservationsController < ApplicationController
  def index
  end

  def confirm
    @room = Room.find(params[:room_id])
    @reservation = Reservation.new(params.permit(:startDay, :endDay, :room_id, :numberOfPeople, :totalPrice))
    @reservation.user_id = current_user.id
    @days = (@reservation.endDay - @reservation.startDay).to_i
    @reservation.totalPrice = @days * @reservation.numberOfPeople * @room.price
    
  end

  def new
    
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:startDay, :endDay, :room_id, :numberOfPeople, :totalPrice))
    @room = Room.find(params[:reservation][:room_id])
    @reservation.user_id = current_user.id
    if @reservation.save
      flash[:notice] = "Reservation was successfully created."
      redirect_to reservation_path(@reservation)
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @room = Room.find(params[:reservation][:room_id])
  end
end
