require 'swagger_helper'

RSpec.describe 'API::AdminPortal::V1::UsersController', type: :request do
  path '/api/admin_portal/v1/users' do
    get 'List Users' do
      tags 'Users'
      produces 'application/json'
      parameter name: :continent_id, in: :query, type: :string, description: 'Filter by continent'
      parameter name: :country_id, in: :query, type: :string, description: 'Filter by country'
      parameter name: :state_id, in: :query, type: :string, description: 'Filter by state'
      parameter name: :city_id, in: :query, type: :string, description: 'Filter by city'
      parameter name: :page, in: :query, type: :integer, description: 'Page number for pagination'

      response '200', 'Users found' do
        schema type: :array, items: { '$ref' => '#/components/schemas/user' }
        run_test!
      end
    end
  end
end