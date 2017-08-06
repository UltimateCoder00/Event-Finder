require_relative 'locations'

class EventFinder
  attr_reader :event_locations

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    available_events = proximity_scanner(coordinateX, coordinateY)
    closest_events_list = closest_events_checker(available_events)

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

  def closest_events_checker(available_events)
    available_events.sort_by! { |i,j,k| i }

    array = []

    for i in 0...5
      array << available_events[i]
    end

    array
  end
end
