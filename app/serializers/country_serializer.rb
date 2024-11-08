class CountrySerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name
end