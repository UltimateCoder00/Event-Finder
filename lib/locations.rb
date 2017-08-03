class Locations
  attr_reader :coordinates

  def initialize
    @coordinates = Array.new(21) { Array.new(21) }
  end

end
