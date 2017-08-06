require_relative 'locations'

class EventFinder
  attr_reader :event_locations

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    array = proximity_scanner(coordinateX, coordinateY)
    require 'pry'; binding.pry


    @event_locations.coordinates[coordinateX+10][coordinateY+10]
  end

  private

  def proximity_scanner(coordinateX, coordinateY)
    array = []

    for i in 0...21
      for j in 0...21
        if @event_locations.coordinates[i][j] == nil
          next
        else
          x_length = (coordinateX+10 - i).abs
          y_length = (coordinateY+10 - j).abs

          array << [x_length+y_length,i,j]
        end
      end
    end

    array
  end
end
