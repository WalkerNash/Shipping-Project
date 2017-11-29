class Job < ApplicationRecord
  has_and_belongs_to_many :ships
  validates :name, uniqueness: true
  validates :cost, length: { > 1000 }
  validates :description, length: { > 20 }
  validates :origin
  validates :description, :origin, :destination, :cost, :containers, presence: true
end
