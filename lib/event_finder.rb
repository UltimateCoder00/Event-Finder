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

    for i in 0...4
      puts closest_events_list[i]
    end

    puts closest_events_list[4]
  end

  private

  def proximity_scanner(coordinateX, coordinateY)
    array = []

    for i in 0...21
      for j in 0...21
        next if @event_locations.coordinates[i][j] == nil

        x_length = (coordinateX+10 - i).abs
        y_length = (coordinateY+10 - j).abs

        array << [x_length+y_length,i,j]
      end
    end

    array.sort_by! {|x| x[0]}
  end

  def closest_events_checker(available_events)
    available_events[0..4]
  end

  def closest_events_checker_filter(closest_events_list_info)
    array = []

    closest_events_list_info.each do |i,j,k|
      id = @event_locations.coordinates[j][k].id
      ticket_price = @event_locations.coordinates[j][k].tickets[0].price / 100.0
      string = "Event #{id} - $#{ticket_price}, Distance #{i}"
      array << string
    end

    array
  end
end
