class StateSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name
end