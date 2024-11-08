class Api::AdminPortal::V1::CountriesController < Api::AdminPortal::V1::AdminPortalController
  def index
    countries = list(Country)
    render json: CountrySerializer.new(countries).to_j
  end
end