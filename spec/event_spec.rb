require 'event'
require 'ticket'

describe Event do
  subject(:event) {described_class.new}

  it 'Initialization' do
    expect(event.id).to be_a Integer
    expect(event.tickets).to be_a Array
  end

  it '#add_ticket' do
    ticket = Ticket.new
    expect(event.add_ticket(ticket)).to eq [ticket]
  end
end
