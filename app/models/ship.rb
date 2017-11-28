class Ship < ApplicationRecord
  belongs_to :job
  belongs_to :user
  validates :name, uniqueness: true
  validates :location
end
