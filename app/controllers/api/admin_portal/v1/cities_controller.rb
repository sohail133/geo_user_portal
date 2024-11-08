class Api::AdminPortal::V1::CitiesController < Api::AdminPortal::V1::AdminPortalController
  def index
    cities = list(City)
    render json: CitySerializer.new(cities).to_j
  end
end