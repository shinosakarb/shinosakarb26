module Muregi
  class Cashier
    attr_reader :cart

    def add_to_cart(cart)
      @cart = cart
    end

    def total_amount
      @cart.product_list.inject(0) { |total, product| total += product.price }
    end

    def checkout!(money)
      change = money - total_amount
      if change < 0
        raise Muregi::NotEnoughMoney
      else
        change
      end 
    end
  end
end
