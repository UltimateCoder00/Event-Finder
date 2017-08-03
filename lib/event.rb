class Event
  attr_reader :id, :tickets

  def initialize
    @id = rand(0..1000000)
    @tickets = []
  end

end
