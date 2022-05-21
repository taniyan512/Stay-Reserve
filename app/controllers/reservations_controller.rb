class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = @user.reservations
  end

  def confirm
    @user = current_user.id
    @room = Room.find(params[:room_id])
    @reservation = Reservation.new(params.permit(:startDay, :endDay, :room_id, :numberOfPeople, :totalPrice))
    @reservation.user_id = current_user.id
    if @reservation.valid?
      @days = (@reservation.endDay - @reservation.startDay).to_i
      @reservation.totalPrice = @days * @reservation.numberOfPeople * @room.price
    else
      render "rooms/show"
    end
  end

  def new
    
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:startDay, :endDay, :room_id, :numberOfPeople, :totalPrice, :user_id))
    @room = Room.find(params[:reservation][:room_id])
    if @reservation.save
      flash[:notice] = "Reservation was successfully created."
      redirect_to reservation_path(@reservation)
    end
  end

  def show
    @user = current_user.id
    @reservation = Reservation.find(params[:id])
    @q = Room.ransack(params[:q])
    @results = @q.result 
  end

  
end
