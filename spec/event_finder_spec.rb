require 'event_finder'

describe EventFinder do
  subject(:event_finder) {described_class.new}

  it 'Initialization' do
    expect(event_finder.event_locations).to be_a Locations
  end
end
