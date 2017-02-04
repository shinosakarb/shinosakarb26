class Register
  def initialize(cart)
    @cart = cart
  end

  def fee
    @cart.fee
  end

  def purchase
    true
  end
end
