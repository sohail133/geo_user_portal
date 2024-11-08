class Api::AdminPortal::V1::UsersController < Api::AdminPortal::V1::AdminPortalController
  def index
    users = list(User).includes(:continent, :country, :state, :city)
    render json: UserSerializer.new(users).to_j
  end

  private

  def filtering_params
    params.permit(:continent_id, :country_id, :state_id, :city_id)
  end
end