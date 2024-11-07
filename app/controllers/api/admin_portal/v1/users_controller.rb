class Api::AdminPortal::V1::UsersController < Api::AdminPortal::V1::AdminPortalController
  def index
    users = list(User)
    render json: users, status: :ok
  end

  private

  def filtering_params
    params.permit(:continent_id, :country_id, :state_id, :city_id)
  end
end