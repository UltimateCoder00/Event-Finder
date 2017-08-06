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
      x.map! { Event.new if [true, false].sample }
    end

    array
  end

end
