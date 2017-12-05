class JobShip < ApplicationRecord
  belongs_to :ships
	belongs_to :jobs
  belongs_to :user
end
