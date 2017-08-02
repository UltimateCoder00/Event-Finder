require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  it 'Checks the price of the ticket' do
    expect(ticket.price).to be_a Integer
  end

  it '#optimal_price_generator' do
    expect(ticket.optimal_price_generator).to be_a Integer
  end

  it '#edit_price' do
    ticket_price = 100
    ticket2 = described_class.new(ticket_price)

    new_ticket_price = 200
    ticket2.edit_price(new_ticket_price)
    expect(ticket2.price).to eq new_ticket_price
  end
end
