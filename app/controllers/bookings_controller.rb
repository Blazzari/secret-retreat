class BookingsController < ApplicationController
  before_action :set_room, only: %i[create]
  before_action :set_booking, only: %i[confirm reject]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def dashboard
    @userid = current_user.id
    @bookings = Booking.where(user_id: @userid)
  end
  
  def dashboard_booked
    @userid = current_user.id
    @rooms = Room.where(user_id: @userid)
  end
  
  def create
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully added.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def confirm 
    @booking.validation = "confirmed"
    @booking.save
    redirect_to dashboard_booked_path
  end 

  def reject
    @booking.validation = "rejected"
    @booking.save
    redirect_to dashboard_booked_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to dashboard_path, notice: 'Booking was successfully destroyed.'
  end

  def edit
  end

  def update
    
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end 

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
