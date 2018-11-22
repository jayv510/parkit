class SpacesController < ApplicationController

  def index
    @spaces = Space.all
    @space_address = params[:space_address]

    #geocoding
    @spaces = Space.where.not(latitude: nil, longitude: nil)

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
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.save
    redirect_to spaces_path
  end

  def show
    @space = Space.find(params[:id])

    @markers =
      [{
        lng: @space.longitude,
        lat: @space.latitude,
        infoWindow: { content: render_to_string(partial: "/spaces/map_window", locals: { space: @space }) }
      }]
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:title, :description, :address, :half_hour_rate, :availability)
  end

end
