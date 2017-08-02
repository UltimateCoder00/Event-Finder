class Ticket
  attr_reader :price

  MAXIMUM_TICKET_PRICE_IN_PENNIES = 100000

  def initialize(price = -1)
    @price = add_price(price)

  end

  def add_price(price)
    price == -1 ? optimal_price_generator(MAXIMUM_TICKET_PRICE_IN_PENNIES) : @price = price
  end

  def optimal_price_generator(max_price)
    rand(0..max_price)
  end
end
