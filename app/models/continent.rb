class Continent < ApplicationRecord
  has_many :countries
  has_many :states, through: :countries
  has_many :cities, through: :states
  has_many :users

  validates :name, presence: true, uniqueness: true
end