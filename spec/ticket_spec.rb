require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  ticket_price = 100
  new_ticket_price = 200
  subject(:new_ticket) {described_class.new(ticket_price)}

  error_message = "This ticket is already sold"

  it 'Initialization' do
    expect(ticket.price).to be_a Integer
    expect(ticket.sold).to eq false
  end

  context '#edit_price' do
    before(:each) do
      expect(new_ticket.price).to eq ticket_price
    end

    it 'Edit ticket price' do
      new_ticket.edit_price(new_ticket_price)
      expect(new_ticket.price).to eq new_ticket_price
    end

    it 'Raises error if the ticket is already sold' do
      ticket.sell
      expect{ticket.edit_price(new_ticket_price)}.to raise_error error_message
    end
  end

  context '#sell' do
    before(:each) do
      ticket.sell
    end

    it 'Sells the ticket' do
      expect(ticket.sold).to eq true
    end

    it 'Raises error if the ticket is already sold' do
      expect{ticket.sell}.to raise_error error_message
    end
  end
end
