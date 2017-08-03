class Event
  attr_reader :id, :tickets

  def initialize
    @id = id_generator
    @tickets = []
  end

  private

  def id_generator
    rand(0..1000000)
  end

end
