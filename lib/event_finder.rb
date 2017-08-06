require_relative 'locations'

class EventFinder
  attr_reader :event_locations

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    @event_locations.coordinates[coordinateX+10][coordinateY+10]
  end
end
