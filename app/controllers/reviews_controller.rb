class ReviewsController < ApplicationController
  before_action :set_room, only: %i[create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.room = @room
    if @review.save
      redirect_to room_path(@room), notice: 'Review was successfully added.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def review_params
    params.require(:review).permit(:content, :review_rating)
  end
end
