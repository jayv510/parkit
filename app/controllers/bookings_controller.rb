class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @space = Space.find(params[:space_id])
    # @booking.user = current_user
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    @booking.status = "pending"

    @booking.total_price = ( (@booking.end_datetime - @booking.start_datetime) / 3600 * 2 ) * @booking.space.half_hour_rate

    if @booking.save
      # redirect_to space_booking_path(@booking)
      redirect_to space_path(@space)
      flash[:notice] = "Successfully created booking"
    else
      render 'new'
      flash[:alert] = "Booking error"
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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @user = current_user
    redirect_to user_bookings_path(@user)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :space_id)
  end

end
