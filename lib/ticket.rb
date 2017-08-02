class Ticket
  attr_reader :price

  MAXIMUM_TICKET_PRICE_IN_PENNIES = 100000

  def initialize(price = -1)
    @price = price == -1 ? optimal_price_generator : @price = price
  end

  def edit_price(new_price)
    @price = new_price
  end

  private
  def optimal_price_generator
    rand(0..MAXIMUM_TICKET_PRICE_IN_PENNIES)
  end
  
end
