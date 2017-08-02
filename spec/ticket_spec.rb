require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  it 'Checks the price of the ticket' do
    expect(ticket.price).to be_a Integer
  end

  it '#add_price' do
    ticket_price = 100
    ticket.add_price(ticket_price)
    expect(ticket.price).to eq ticket_price
  end

  it '#optimal_price_generator' do
    expect(ticket.optimal_price_generator).to be_a Integer
  end
end
