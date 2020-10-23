require 'rails_helper'

RSpec.describe AmusementPark, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :admission_price }
end 

describe 'relationships' do 
  it { should have_many :rides }
end 

describe 'instance methods' do 
  it 'should cacluate the average ride rating' do 
    amusementpark1 = AmusementPark.create!(name: 'Hershey Park',
                                          admission_price: 50.00)
    ride1 = amusementpark1.rides.create!(name: 'Lightning Racer',
                        thrill_rating: 7)
    ride2 = amusementpark1.rides.create!(name: 'Storm Runner',
                        thrill_rating: 7)
    ride3 = amusementpark1.rides.create!(name: 'The Great Bear',
                        thrill_rating: 10)

    expect(amusementpark1.av_rides_rating).to eq(8)
  end
end
