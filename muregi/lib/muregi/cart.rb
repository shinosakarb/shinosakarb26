module Muregi
  class Cart
    attr_reader :product_list

    def initialize
      @product_list = []
    end

    def add(product)
      @product_list.push product
    end
  end
end
