class Ticket
  attr_reader :price

  MAXIMUM_TICKET_PRICE_IN_PENNIES = 100000

  def initialize
    @price = declare_price(MAXIMUM_TICKET_PRICE_IN_PENNIES)
  end

  def declare_price(max_price)
    rand(0..max_price)
  end
end
