require 'locations'

describe Locations do
  subject(:locations) {described_class.new}

  it 'Initialization' do
    expect(locations.coordinates).to be_a Array
  end
end
