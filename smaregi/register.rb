class Register

  def checkout cart, money
    total = 0
    cart.product_list.each do |prod|
      total += prod.price
    end

    puts "The total is #{total}."

    if money > total
      puts "Thank you! Your change is #{money - total}"
    elsif money == total
      puts "Thank you!"
    else
      puts "Stop, please put the items down and leave."
    end
  end

end
