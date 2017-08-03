class Ticket
  attr_reader :price, :sold

  MAXIMUM_TICKET_PRICE_IN_PENNIES = 100000

  def initialize(price = -1)
    @price = price == -1 ? optimal_price_generator : @price = price
    @sold = false
  end

  def edit_price(new_price)
    fail "This ticket is already sold" if @sold
    @price = new_price
  end

  def sell
    fail "This ticket is already sold" if @sold
    @sold = true
  end

  private
  def optimal_price_generator
    rand(0..MAXIMUM_TICKET_PRICE_IN_PENNIES)
  end

end
