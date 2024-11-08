class Api::AdminPortal::V1::StatesController < Api::AdminPortal::V1::AdminPortalController
  def index
    states = list(State)
    render json: StateSerializer.new(states).to_j
  end
end