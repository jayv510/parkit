class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking)
    @bookings_made = current_user.bookings
    @bookings_received = Booking.all.joins(:space).where("spaces.user_id = ?", current_user.id)
  end

  def new
    @space = Space.find(params[:space_id])
    authorize @space
    @booking = Booking.new
    authorize @booking

    @markers =
      [{
        lng: @space.longitude,
        lat: @space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: @space }) }
      }]
  end

  def create
    @space = Space.find(params[:space_id])
    authorize @space
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.space = @space
    @booking.user = current_user
    @booking.status = "pending"

    @booking_length = (@booking.end_datetime - @booking.start_datetime) / 3600 * 2
    @booking.total_price = ( @booking_length * @booking.space.half_hour_rate )

    if @booking.save
      # redirect_to space_booking_path(@booking)
      redirect_to space_bookings_path(@space)
      flash[:notice] = "Successfully created booking"
    else
      render 'new'
      flash[:alert] = "Booking error"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @parker = @booking.user
    @space = @booking.space
    @space_owner = @booking.space.user

    @markers =
      [{
        lng: @space.longitude,
        lat: @space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: @space }) }
      }]
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking

    @booking.update(booking_params)

    @booking_length = (@booking.end_datetime - @booking.start_datetime) / 3600 * 2
    @booking.total_price = ( @booking_length * @booking.space.half_hour_rate )

    @booking.save

    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @space = @booking.space
    authorize @booking
    @booking.destroy
    redirect_to space_bookings_path(@space)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :space_id)
  end

end
