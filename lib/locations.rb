require_relative 'event'

class Locations
  attr_reader :coordinates
  X_COORDINATE_RANGE = 21
  Y_COORDINATE_RANGE = 21

  def initialize
    @coordinates = adding_events_algorithm
  end

  private
  def adding_events_algorithm
    array = Array.new(X_COORDINATE_RANGE) { Array.new(Y_COORDINATE_RANGE) }

    array.each do |x|
      x.map! { Event.new if [true, false].sample }
    end

    array
  end

end
