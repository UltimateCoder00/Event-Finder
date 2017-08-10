require 'event'
require 'ticket'

describe Event do
  subject(:event) {described_class.new}

  ticket = Ticket.new

  invalid_ticket = 'This is a fake ticket'
  error_message = "This ticket is invalid"
  error_message2 = "This ticket does not belong to this event"

  it 'Initialization' do
    expect(event.id).to be_a Integer
    expect(event.tickets).to be_a Array
  end

  context '#add_ticket' do
    it 'Add ticket to event' do
      event.add_ticket(ticket)
      expect(event.tickets.last).to eq ticket
    end

    it 'Raises error if the ticket is an invalid type' do
      expect{event.add_ticket(invalid_ticket)}.to raise_error error_message
    end
  end

  context '#remove_ticket' do
    before(:each) do
      event.add_ticket(ticket)
    end

    it 'Remove ticket from event' do
      expect(event.remove_ticket(ticket)).to eq ticket
    end

    describe 'Errors' do
      it 'Raises error if the ticket is an invalid type' do
        expect{event.remove_ticket(invalid_ticket)}.to raise_error error_message
      end

      it 'Raises error if the ticket is not in the event' do
        event.remove_ticket(ticket)
        expect{event.remove_ticket(ticket)}.to raise_error error_message2
      end
    end
  end
end
