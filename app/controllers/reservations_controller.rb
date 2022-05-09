class ReservationsController < ApplicationController
  def index
  end

  def confirm
    @room = Room.find(params[:id])
    @reservation = Reservation.new(params.permit(:startDay, :endDay, :room_id, :numberOfPeople))
    @reservation.user_id = current_user.id
    @days = (@reservation.endDay - @reservation.startDay).to_i
    @reservation.totalPrice = @days * @reservation.numberOfPeople * @room.price
    
  end

  def new
    
  end

  def create
    
   
  end
end
