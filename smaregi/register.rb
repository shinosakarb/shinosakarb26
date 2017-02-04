class Register

  def checkout cart, money
    total = 0
    cart.product_list.each do |prod|
      total += prod.price
    end

    if money >= total
      puts "Thank you!"
    else
      puts "Stop, please put the items down and leave."
    end
  end

end
