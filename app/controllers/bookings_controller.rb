class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_booking, only: [ :show, :edit, :update ]
  before_action :set_tool, only: [ :new, :create, :index ]

  def index
    @bookings = Booking.where(tool_id: @tool.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:tool_id, :user_id, :start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
