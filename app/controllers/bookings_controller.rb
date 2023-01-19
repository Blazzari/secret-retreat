class BookingsController < ApplicationController
  before_action :set_room, only: %i[create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.room = @room
    if @booking.save
      redirect_to room_path(@room), notice: 'Booking was successfully added.'
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
end
