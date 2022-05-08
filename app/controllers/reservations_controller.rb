class ReservationsController < ApplicationController
  def index
  end

  def new
    @reservation = Reservation.new(params.require(:reservation).permit(:startDay, :endDay, :room_id))
    @reservation.user_id = current_user.id
  end

  def create
    
   
  end
end
