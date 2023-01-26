class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit update destroy]
  before_action :search, only: %i[index]

  def index
    @rooms = Room.all
    @rooms = @rooms.where("city ILIKE ?", "%#{@city}%") unless @city.empty? || @city.nil?
    @rooms = @rooms.where(guests_number: @guests) unless @guests.empty? || @guests.nil?
    @rooms = @rooms.where(price: @min_price..) unless @min_price.empty? || @min_price.nil?
    @rooms = @rooms.where(price: ..@max_price) unless @max_price.empty? || @max_price.nil?
  end

  def search
    @city = params[:city].to_s
    @guests = params[:guests].to_s
    @min_price = params[:min_price].to_s
    @max_price = params[:max_price].to_s
  end

  def my_rooms
    @userid = current_user.id
    @rooms = Room.where(user_id: @userid)
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
    params.require(:room).permit(:title, :address, :rating, :description, :price, :city, :guests_number, :photo)
  end
end
