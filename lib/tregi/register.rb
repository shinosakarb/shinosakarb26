class Register
  attr_reader :surplus

  def initialize(cart)
    @cart = cart
  end

  def fee
    @cart.fee
  end

  def purchase(fee)
    @surplus = fee - self.fee
    0 <= @surplus
  end
end
