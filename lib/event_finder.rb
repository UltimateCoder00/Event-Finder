require_relative 'locations'

class EventFinder
  attr_reader :event_locations
  NUMBER_OF_CLOSEST_EVENTS = 5

  def initialize
    @event_locations = Locations.new
  end

  def closest_events_to(coordinateX, coordinateY)
    available_events = proximity_scanner(coordinateX, coordinateY)
    puts "The Closest Events to (#{coordinateX},#{coordinateY}) are:"
    display_closest_events(available_events[0...NUMBER_OF_CLOSEST_EVENTS])
  end

  private

  def proximity_scanner(coordinateX, coordinateY)
    array = []

    for i in 0...Locations::X_COORDINATE_RANGE
      for j in 0...Locations::Y_COORDINATE_RANGE
        next if @event_locations.coordinates[i][j] == nil

        x_length = (coordinateX + (Locations::X_COORDINATE_RANGE / 2) - i).abs
        y_length = (coordinateY + (Locations::Y_COORDINATE_RANGE / 2) - j).abs

        array << [x_length+y_length,i,j]
      end
    end

    array.sort_by! {|x| x[0]}
  end

  def display_closest_events(available_events)
    division_factor_for_turning_integer_to_dollar_currency = 100.0

    available_events.each do |i,j,k|
      id = @event_locations.coordinates[j][k].id

      if @event_locations.coordinates[j][k].tickets.first == nil
        puts "#{i+1}) Event #{id} has no tickets left"
      else
        ticket_price = @event_locations.coordinates[j][k].tickets.first.price / division_factor_for_turning_integer_to_dollar_currency
        puts "#{i+1}) Event #{id} - $#{ticket_price}, Distance #{i}"
      end
    end
  end
end
