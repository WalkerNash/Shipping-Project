class ShipJob < ApplicationRecord
  belongs_to :job
  belongs_to :ship
end
