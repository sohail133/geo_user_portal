class UserSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :email

  attribute :continent do |object|
    object.continent
  end

  attribute :country do |object|
    object.country
  end

  attribute :state do |object|
    object.state
  end

  attribute :city do |object|
    object.city
  end
end