class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_booking, only: [ :show, :edit, :update ]
  before_action :set_tool, only: [ :new ]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.user = current_user
    @booking.save!
    redirect_to user_bookings_path(current_user)
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
