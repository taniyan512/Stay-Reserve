class ReservationsController < ApplicationController
  def index
  end

  def confirm
    @reservation = Reservation.new(params.permit(:startDay, :endDay, :room_id, :numberOfPeople))
    @reservation.user_id = current_user.id
  end

  def new
    
  end

  def create
    
   
  end
end
