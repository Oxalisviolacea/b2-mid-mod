require 'rails_helper'

RSpec.describe Ride, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :thrill_rating }
end

describe 'relationships' do 
  it { should belong_to :amusement_park }
  it { should have_many :mechanics}
end
