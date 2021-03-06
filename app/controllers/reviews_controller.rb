class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_booking, only: [ :new, :create, :index ]
  before_action :set_review, only: [ :show ]

  def new
    @tool = Tool.find(params[:tool_id])
    @review = Review.new
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to tool_path(@tool.id) # maybe change later??
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
    @booking = Booking.find(params[:booking_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
