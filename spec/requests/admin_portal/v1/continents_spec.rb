require 'swagger_helper'

RSpec.describe 'API::AdminPortal::V1::ContinentsController', type: :request do
  path '/api/admin_portal/v1/continents' do
    get 'List Continents' do
      tags 'Continents'
      produces 'application/json'

      response '200', 'Continents found' do
        schema type: :array, items: { '$ref' => '#/components/schemas/continent' }
        run_test!
      end
    end
  end
end