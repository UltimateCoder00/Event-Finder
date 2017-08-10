require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  error_message = "This ticket is already sold"

  it 'Initialization' do
    expect(ticket.price).to be_a Integer
    expect(ticket.sold).to eq false
  end

  context '#edit_price' do
    it 'Edit ticket price' do
      ticket_price = 100
      ticket2 = described_class.new(ticket_price)
      expect(ticket2.price).to eq ticket_price

      new_ticket_price = 200
      ticket2.edit_price(new_ticket_price)
      expect(ticket2.price).to eq new_ticket_price
    end

    it 'Raises error if the ticket is already sold' do
      new_ticket_price = 100

      ticket.sell
      expect{ticket.edit_price(new_ticket_price)}.to raise_error error_message
    end
  end

  context '#sell' do    
    it 'Sells the ticket' do
      ticket.sell
      expect(ticket.sold).to eq true
    end

    it 'Raises error if the ticket is already sold' do
      ticket.sell
      expect{ticket.sell}.to raise_error error_message
    end
  end
end
