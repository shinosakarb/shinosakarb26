class Register

  def checkout cart, money
    total = 0
    cart.product_list.each do |prod|
      total += prod.price
    end

    total_product_list_amount_message = "The total is #{total}.\n"

    if money > total
      return total_product_list_amount_message + "Thank you!"
    else
      return total_product_list_amount_message + "You don't hve enough money."
    end
  end

end
