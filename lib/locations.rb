require_relative 'event'

class Locations
  attr_reader :coordinates
  @@x_coordinate_range = 21
  @@y_coordinate_range = 21

  def initialize
    @coordinates = adding_events_algorithm
  end

  private
  def adding_events_algorithm
    array = Array.new(@@x_coordinate_range) { Array.new(@@y_coordinate_range) }

    array.each do |x|
      x.map! { Event.new if [true, false].sample }
    end

    array
  end

end
