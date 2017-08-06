require_relative 'event'

class Locations
  attr_reader :coordinates

  def initialize
    @coordinates = adding_events_algorithm
  end

  private
  def adding_events_algorithm
    array = Array.new(441)

    array.map! do |x|
      if [true, false].sample
        x = Event.new
      end
    end

    array
  end

end
