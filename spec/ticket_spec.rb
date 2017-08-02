require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  it 'Initialization' do
    expect(ticket.price).to be_a Integer
    expect(ticket.sold).to eq false
  end

  it '#edit_price' do
    ticket_price = 100
    ticket2 = described_class.new(ticket_price)
    expect(ticket2.price).to eq ticket_price

    new_ticket_price = 200
    ticket2.edit_price(new_ticket_price)
    expect(ticket2.price).to eq new_ticket_price
  end
end
