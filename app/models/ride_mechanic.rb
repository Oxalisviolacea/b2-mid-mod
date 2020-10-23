class RideMechanic < ApplicationRecord
  belongs_to :ride
  belongs_to :mechanics
end
