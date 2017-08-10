require_relative 'locations'

class EventFinder
  attr_reader :event_locations
  NUMBER_OF_CLOSEST_EVENTS = 5

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    available_events = proximity_scanner(coordinateX, coordinateY)
    closest_events_list = closest_events_checker(available_events[0...NUMBER_OF_CLOSEST_EVENTS])

    puts "The Closest Events to (#{coordinateX},#{coordinateY}) are:"
    for i in 0...4
      puts "#{i+1}) " + closest_events_list[i]
    end

    puts 5.to_s + ") " + closest_events_list[4]
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

  def closest_events_checker(closest_events_list_info)
    array = []

    closest_events_list_info.each do |i,j,k|
      id = @event_locations.coordinates[j][k].id

      if @event_locations.coordinates[j][k].tickets[0] == nil
        string = "Event #{id} has no tickets left"
      else
        ticket_price = @event_locations.coordinates[j][k].tickets[0].price / 100.0
        string = "Event #{id} - $#{ticket_price}, Distance #{i}"
      end

      array << string
    end

    array
  end
end
