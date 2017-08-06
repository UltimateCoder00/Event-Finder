require_relative 'event'

class Locations
  attr_reader :coordinates

  def initialize
    @coordinates = adding_events_algorithm
  end

  private
  def adding_events_algorithm
    array = Array.new(21) { Array.new(21) }

    array.each do |x|
      x.map! do |y|
        if [true, false].sample
          y = Event.new
        end
      end
    end

    array
  end

end
