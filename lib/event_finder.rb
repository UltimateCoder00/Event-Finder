require_relative 'locations'

class EventFinder

  def initialize
    @event_locations = Locations.new
  end
end
