class Job < ApplicationRecord
  has_many :job_ships
	has_many :ships, through: :user
  # validates :name, uniqueness: true
  # validates_numericality_of :cost, greater_than: 999.99
  # validates :description, length: { in: 20..1000}
  # validates :origin
  # validates :description, :origin, :destination, :cost, :containers, presence: true
end
