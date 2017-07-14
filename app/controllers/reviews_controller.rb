class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_booking, only: [ :new, :create, :index ]
  before_action :set_review, only: [ :show ]

  def new
    @disable_nav = true
    @review = Review.new
  end

  def create
    @disable_nav = true
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking) # maybe change later??
    else
      render :new
    end
  end

  def show
    @disable_nav = true
  end

  def index
    @disable_nav = true
    @reviews = Review.where(booking_id: @booking.id)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
