require_relative 'ticket'

class Event
  attr_reader :id, :tickets
  MAXIMUM_TICKETS_PER_EVENT = 10

  def initialize
    @id = id_generator
    @tickets = adding_tickets_algorithm
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

  def adding_tickets_algorithm
    random_number = rand(0..MAXIMUM_TICKETS_PER_EVENT)
    tickets_array = []

    random_number.times do
      tickets_array << Ticket.new
    end
    
    tickets_array.sort_by(&:price)
  end

end
