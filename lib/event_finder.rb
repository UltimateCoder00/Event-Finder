require_relative 'locations'

class EventFinder
  attr_reader :event_locations

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    available_events = proximity_scanner(coordinateX, coordinateY)
    closest_events_list_info = closest_events_checker(available_events)

    closest_events_list = closest_events_checker_filter(closest_events_list_info)

    closest_events_list.each do |x|
      p x
    end
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

  def closest_events_checker_filter(closest_events_list_info)
    # - Event 006 - $01.40, Distance 12
    array = []

    closest_events_list_info.each do |i,j,k|
      unless @event_locations.coordinates[j][k] == nil
        string = "Event #{@event_locations.coordinates[j][k].id} - $#{@event_locations.coordinates[j][k].tickets[0].price / 100.0}, Distance #{i}"
        array << string
      end
    end

    array
  end
end
