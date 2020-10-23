require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :yrs_experience }
end

describe 'relationships' do
  it { should have_many :rides }
end
