class ReviewsController < ApplicationController
  before_action :set_booking, only: [ :new, :create, :index ]
  before_action :set_review, only: [ :show ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking) # maybe change later??
    else
      render :new
    end
  end

  def show
  end

  def index
    @reviews = Review.where(booking_id: @booking.id)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
