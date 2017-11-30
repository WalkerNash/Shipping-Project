class Ship < ApplicationRecord
  has_and_belongs_to_many :jobs
  belongs_to :user
  # validates :name, uniqueness: true
  # validates :location
  # has_attached_file :shippic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :shippic, content_type: /\Aimage\/.*\z/
end
