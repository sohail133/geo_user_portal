require 'swagger_helper'

RSpec.describe 'API::AdminPortal::V1::CountriesController', type: :request do
  path '/api/admin_portal/v1/countries' do
    get 'List Countries' do
      tags 'Countries'
      produces 'application/json'

      response '200', 'Countries found' do
        schema type: :array, items: { '$ref' => '#/components/schemas/country' }
        run_test!
      end
    end
  end
end
