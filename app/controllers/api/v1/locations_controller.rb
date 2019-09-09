class Api::V1::LocationsController < ApiController
  def show
    @location = Location.find(params[:id])
  end
end
