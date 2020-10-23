class Mechanic < ApplicationRecord
  validates_presence_of :name, :yrs_experience
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics
  # has_and_belongs_to_many :rides
end
