require 'rails_helper'

RSpec.describe 'The Mechanic show page' do 
  it 'can show the rides and the average thrill rating' do 
    amusementpark1 = AmusementPark.create!(name: 'Hershey Park',
                                          admission_price: 50.00)
    ride1 = amusementpark1.rides.create!(name: 'Lightning Racer',
                        thrill_rating: 7)
    ride2 = amusementpark1.rides.create!(name: 'Storm Runner',
                        thrill_rating: 7)
    ride3 = amusementpark1.rides.create!(name: 'The Great Bear',
                        thrill_rating: 10)

    expect(page).to have_content('Admissions: $50.00')
    expect(page).to have_content(@ride1.name)
    expect(page).to have_content(@ride2.name)
    expect(page).to have_content(@ride3.name)
    expect(page).to have_content('Average Thrill Rating of Rides: 8/10')
  end
end