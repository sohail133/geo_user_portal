require 'swagger_helper'

RSpec.describe 'API::AdminPortal::V1::CitiesController', type: :request do
  path '/api/admin_portal/v1/cities' do
    get 'List Cities' do
      tags 'Cities'
      produces 'application/json'

      response '200', 'Cities found' do
        schema type: :array, items: { '$ref' => '#/components/schemas/city' }
        run_test!
      end
    end
  end
end
