class Event
  attr_reader :id, :tickets

  def initialize
    @id = id_generator
    @tickets = []
  end

  def add_ticket(ticket)
    fail "This ticket is invalid" unless ticket.class == Ticket
    @tickets << ticket
  end

  def remove_ticket(ticket)
    fail "This ticket is invalid" unless ticket.class == Ticket
    fail "This ticket does not belong to this event" unless tickets.include?(ticket)
    @tickets.delete(ticket)
  end

  private

  def id_generator
    rand(0..1000000)
  end

end
