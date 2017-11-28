class Job < ApplicationRecord
  belongs_to :ship
  validates :name, uniqueness: true
  validates :cost, length: { > 1000 }
  validates :description, length: { > 20 }
  validates :origin
  validates :description, :origin, :destination, :cost, :containers, presence: true
end
