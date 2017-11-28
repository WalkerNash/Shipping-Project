class Job < ApplicationRecord
  belongs_to :ship
  validates :cost,
  validates :description, length: { > 20 }
  validates :origin
  validates :description, :origin, :destination, :cost, :containers, presence: true
end
