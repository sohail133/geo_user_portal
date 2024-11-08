class Api::AdminPortal::V1::ContinentsController < Api::AdminPortal::V1::AdminPortalController
  def index
    continents = list(Continent)
    render json: ContinentSerializer.new(continents).to_j
  end
end