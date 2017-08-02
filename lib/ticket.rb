class Ticket
  attr_reader :price

  def initialize
    @price = declare_price
  end

  def declare_price
    rand(0..10000)
  end
end
