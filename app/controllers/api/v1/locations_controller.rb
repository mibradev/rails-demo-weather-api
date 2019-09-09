class Api::V1::LocationsController < ApiController
  def show
    render json: Location.find(params[:id]), include: :recordings
  end
end
