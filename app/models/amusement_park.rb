class AmusementPark < ApplicationRecord
  validates_presence_of :name, :admission_price
  has_many :rides

  def av_rides_rating
    self.rides.average(:thrill_rating)
  end
end
