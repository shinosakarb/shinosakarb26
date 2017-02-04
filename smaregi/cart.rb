class Cart

  attr_accessor :product_list, :product_amount

  def initialize
    @product_list = Array.new
    @product_quantity = 0
  end

  def add(product)
    @product_list << product
  end

  def remove(product)
    @product_list.delete(product)
  end

end
