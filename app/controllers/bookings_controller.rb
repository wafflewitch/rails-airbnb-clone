class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_booking, only: [ :show, :edit, :update ]
  before_action :set_tool, only: [ :new ]

  def index
    @disable_nav = true
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @disable_nav = true
    @tool = Tool.find(params[:tool_id])
    @user = User.find(@tool[:user_id])
    @booking.tool = @tool
    @hash = Gmaps4rails.build_markers(@tool) do |tool, marker|
        marker.lat tool.user.latitude if !tool.user.latitude.nil?
        marker.lng tool.user.longitude if !tool.user.longitude.nil?
    end
  end

  def new
    @disable_nav = true
    @booking = Booking.new
  end

  def create
    @disable_nav = true
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.user = current_user
    @booking.save!
    redirect_to user_bookings_path(current_user)
  end

  def edit
    @disable_nav = true
  end

  def update
    @disable_nav = true
    @booking.update(booking_params)
    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    booking_params = params.require(:booking).permit(:start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
