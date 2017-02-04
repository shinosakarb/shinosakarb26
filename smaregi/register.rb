class Register

  def checkout cart, money
    total = total_price(cart)

    total_products_amount_message = "The total is #{total}.\n"

    if money > total
      return total_products_amount_message + "Thank you!"
    else
      return total_products_amount_message + "You don't hve enough money."
    end
  end

  def total_price(cart)
    total = 0
    cart.products.each do |prod|
      total += prod.price
    end
    return total
  end
end
