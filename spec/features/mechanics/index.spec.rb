require 'rails_helper'

RSpec.describe 'The Amusement Park show page' do 
  it 'can show the rides and the average thrill rating' do 
  mechanic1 = Mechanic.create!(name: 'mechanic 1',
                              yrs_experience: 2)
  mechanic2 = Mechanic.create!(name: 'mechanic 2',
                              yrs_experience: 4)

    expect(page).to have_content(@mechanic1.name)
    expect(page).to have_content(@mechanic1.yrs_experience)
    expect(page).to have_content(@mechanic2.name)
    expect(page).to have_content(@mechanic2.yrs_experience)

  end