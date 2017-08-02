require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  it 'Checks the price of the ticket' do
    expect(ticket.price).to be_a Integer
  end

  it '#declare_price' do
    expect(ticket.optimal_price_generator(Ticket::MAXIMUM_TICKET_PRICE_IN_PENNIES)).to be_a Integer
  end
end
