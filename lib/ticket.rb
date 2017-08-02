class Ticket
  attr_reader :price

  MAXIMUM_TICKET_PRICE_IN_PENNIES = 100000

  def initialize(price = -1)
    @price = add_price(price)

  end

  def add_price(price)
    price == -1 ? declare_price(MAXIMUM_TICKET_PRICE_IN_PENNIES) : @price = price
  end

  def declare_price(max_price)
    rand(0..max_price)
  end
end
