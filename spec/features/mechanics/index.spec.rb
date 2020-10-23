require 'rails_helper'

RSpec.describe 'The Mechanics index page' do 
  it 'can show the rides and the average thrill rating' do 
  amusementpark1 = AmusementPark.create!(name: 'Hershey Park',
                                        admission_price: 50.00)
  ride1 = amusementpark1.rides.create!(name: 'Lightning Racer',
                      thrill_rating: 7)
  ride2 = amusementpark1.rides.create!(name: 'Storm Runner',
                      thrill_rating: 7)
  ride3 = amusementpark1.rides.create!(name: 'The Great Bear',
                      thrill_rating: 10)
  mechanic1 = ride1.mechanics.create!(name: 'mechanic 1',
                              yrs_experience: 2)
  mechanic2 = ride2.mechanics.create!(name: 'mechanic 2',
                              yrs_experience: 4)

    expect(page).to have_content(@mechanic1.name)
    expect(page).to have_content(@mechanic1.yrs_experience)
    expect(page).to have_content(@ride1.name)
    expect(page).to have_content(@ride2.name)
  end
end