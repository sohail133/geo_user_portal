class State < ApplicationRecord
  belongs_to :country
  has_many :cities
  has_many :users

  validates :name, presence: true, uniqueness: { scope: :country_id }

  scope :by_country, ->(country_id) { where(country_id: country_id) }
end