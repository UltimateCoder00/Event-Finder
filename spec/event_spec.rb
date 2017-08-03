require 'event'
require 'ticket'

describe Event do
  subject(:event) {described_class.new}

  it 'Initialization' do
    expect(event.id).to be_a Integer
    expect(event.tickets).to be_a Array
  end

  context '#add_ticket' do
    it 'Add ticket to event' do
      ticket = Ticket.new
      expect(event.add_ticket(ticket)).to eq [ticket]
    end

    it 'Raises error if the ticket is an invalid type' do
      ticket = 'This is a ticket'
      error_message = "This ticket is invalid"
      expect{event.add_ticket(ticket)}.to raise_error error_message
    end
  end

  context '#remove_ticket' do
    it 'Remove ticket from event' do
      expect(event.tickets).to eq []

      ticket = Ticket.new
      event.add_ticket(ticket)

      expect(event.remove_ticket(ticket)).to eq ticket
      expect(event.tickets).to eq []
    end

    describe 'Errors' do
      it 'Raises error if the ticket is an invalid type' do
        ticket = 'This is a ticket'
        error_message = "This ticket is invalid"
        expect{event.remove_ticket(ticket)}.to raise_error error_message
      end

      it 'Raises error if the ticket is not in the event' do
        ticket = Ticket.new
        error_message = "This ticket does not belong to this event"
        expect{event.remove_ticket(ticket)}.to raise_error error_message
      end
    end
  end
end
