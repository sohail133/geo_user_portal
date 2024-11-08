require 'swagger_helper'

RSpec.describe 'API::AdminPortal::V1::StatesController', type: :request do
  path '/api/admin_portal/v1/states' do
    get 'List States' do
      tags 'States'
      produces 'application/json'

      response '200', 'States found' do
        schema type: :array, items: { '$ref' => '#/components/schemas/state' }
        run_test!
      end
    end
  end
end
