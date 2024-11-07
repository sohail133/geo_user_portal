class City < ApplicationRecord
  belongs_to :state
  has_many :users

  validates :name, presence: true, uniqueness: { scope: :state_id }

  scope :by_state, ->(state_id) { where(state_id: state_id) }
end