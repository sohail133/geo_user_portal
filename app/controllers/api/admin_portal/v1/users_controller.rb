class Api::AdminPortal::V1::UsersController < Api::AdminPortal::V1::AdminPortalController
  def index
    users = list(User).includes(:continent, :country, :state, :city)
    
    render json: {
      data: UserSerializer.new(users).to_j,
      meta: {
        total_count: users.total_count,
        total_pages: users.total_pages,
        current_page: users.current_page
      }
    }
  end

  private

  def filtering_params
    params.permit(:continent_id, :country_id, :state_id, :city_id)
  end
end