class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :address, :description, presence: true
  geocoded_by :address
  after_validation :geocode
end
