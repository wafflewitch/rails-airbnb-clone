class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update ]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
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
end
