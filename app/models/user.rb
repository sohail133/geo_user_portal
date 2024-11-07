class User < ApplicationRecord
  belongs_to :continent, optional: true
  belongs_to :country, optional: true
  belongs_to :state, optional: true
  belongs_to :city, optional: true

  scope :filter_by_continent_id, ->(continent_id) { where(continent_id: continent_id) if continent_id.present? }
  scope :filter_by_country_id, ->(country_id) { where(country_id: country_id) if country_id.present? }
  scope :filter_by_state_id, ->(state_id) { where(state_id: state_id) if state_id.present? }
  scope :filter_by_city_id, ->(city_id) { where(city_id: city_id) if city_id.present? }
end