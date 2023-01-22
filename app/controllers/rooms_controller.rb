class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit update destroy]
  before_action :search, only: %i[index]

  def index
    @rooms = Room.all
  end

  def search
    @query = {
      city_query: params[:city],
      guests_query: params[:guests],
      min_price_query: params[:min_price],
      max_price_query: params[:max_price]
    }
  end

  def show
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      redirect_to room_path(@room), notice: 'Room was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @room.update(room_params)
      redirect_to rooms_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_path, notice: 'Room was successfully destroyed.'
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:title, :address, :rating, :description, :price, :city, :guests_number)
  end
end
