require 'event_finder'

describe EventFinder do
  subject(:event_finder) {described_class.new}

  it 'Initialization' do
    expect(event_finder.event_locations).to be_a Locations
  end

  it '#closest_events_to' do
    expect(event_finder.closest_events_to(4, 2)).to be_a(Event).or eq(nil)
  end
end
