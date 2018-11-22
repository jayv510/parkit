class SpacesController < ApplicationController
before_action :geocode_address, only: :index
#grab geocode coordinates as soon as index renders

  def index
    # @spaces = Space.all
    @spaces = policy_scope(Space)
    @space_address = params[:space_address]

    #geocoding
    if @coordinates
      @spaces = Space.near(@coordinates, 10)
    else
    @spaces = Space.where.not(latitude: nil, longitude: nil)
    end

    @markers = @spaces.map do |space|
      {
        lng: space.longitude,
        lat: space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: space }) }
      }
    end
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    @space.save
    redirect_to spaces_path
  end

  def show
    @space = Space.find(params[:id])
    authorize @space

    @markers =
      [{
        lng: @space.longitude,
        lat: @space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: @space }) }
      }]
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
  end

  def update
    @space = Space.find(params[:id])
    authorize @space
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space = Space.find(params[:id])
    authorize @space
    @space.destroy
    redirect_to spaces_path
  end

  private

  def geocode_address
    if params[:space_address]
      @address = Geocoder.search(params[:space_address])
      # geocoder gives an array of possible coordinates
      unless @address.empty?
        @coordinates = @address.first.coordinates
      # retrieve the first coordinates if address exists
      else
      return @coordinates = false
      end

    end
  end

  def space_params
    params.require(:space).permit(:title, :description, :address, :half_hour_rate, :availability, :photo)
  end
end
