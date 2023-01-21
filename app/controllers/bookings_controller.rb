class BookingsController < ApplicationController
  before_action :set_room, only: %i[create]
  before_action :set_price, only: %i[show]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully added.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to rooms_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end


  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_price
    @booking = Booking.find(params[:id])
    @room = Room.find(@booking.room_id)
    @duration = @booking.end_date - @booking.start_date
    @duration = @duration.to_i
    @price = @duration * @room.price
  end
end
