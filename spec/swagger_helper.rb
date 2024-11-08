# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.openapi_root = Rails.root.join('swagger').to_s

  config.openapi_specs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1',
        description: 'API documentation for the application'
      },
      paths: {},
      components: {
        schemas: {
          user: {
            type: :object,
            properties: {
              id: { type: :integer },
              continent_id: { type: :integer, nullable: true },
              country_id: { type: :integer, nullable: true },
              state_id: { type: :integer, nullable: true },
              city_id: { type: :integer, nullable: true },
              created_at: { type: :string, format: 'date-time' },
              updated_at: { type: :string, format: 'date-time' }
            },
            required: %w[id created_at updated_at]
          },
          continent: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string }
            },
            required: %w[id name]
          },
          country: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              continent_id: { type: :integer }
            },
            required: %w[id name continent_id]
          },
          state: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              country_id: { type: :integer }
            },
            required: %w[id name country_id]
          },
          city: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              state_id: { type: :integer }
            },
            required: %w[id name state_id]
          }
        }
      },
      servers: [
        { url: 'http://localhost:3000', description: 'Local Development'},
        { url: 'https://geouserportal-production.up.railway.app', description: 'Production Environment' }
      ]
    }
  }

  config.openapi_format = :yaml
end