class Job < ApplicationRecord
  belongs_to :ship
  belongs_to :user
end
