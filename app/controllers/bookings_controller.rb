class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    # @booking.user = current_user
    @booking = Booking.create(booking_params)
    @space = @booking.space

    if @booking.save
      redirect_to space_booking_path(@booking)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @parker = @booking.user
    @space = @booking.space
    @space_owner = @booking.space.user
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to space_booking_path(@space)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :space_id)
  end

end
