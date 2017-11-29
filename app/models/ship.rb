class Ship < ApplicationRecord
  has_and_belongs_to_many :jobs
  belongs_to :user
end
