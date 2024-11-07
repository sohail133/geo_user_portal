class Country < ApplicationRecord
  belongs_to :continent
  has_many :states
  has_many :cities, through: :states
  has_many :users

  validates :name, presence: true, uniqueness: { scope: :continent_id }

  scope :by_continent, ->(continent_id) { where(continent_id: continent_id) }
end