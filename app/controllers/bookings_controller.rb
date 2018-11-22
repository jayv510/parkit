class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new

    @markers =
      [{
        lng: @space.longitude,
        lat: @space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: @space }) }
      }]
  end

  def create
    @space = Space.find(params[:space_id])
    # @booking.user = current_user
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    @booking.status = "pending"

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

  private
  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :space_id)
  end

end
