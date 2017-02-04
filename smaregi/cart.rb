class Cart

  attr_accessor :product_list, :product_quantity

  def initialize
    @product_list = Array.new
    @product_quantity = 0
  end

  def add(product)
    @product_list << product
  end

  def remove(product)
    @product_list.delete_at(@product_list.index(product))
  end

  def product_quantity?(product)
    new_list = @product_list.select do |prod|
      prod unless prod != product
    end
    new_list.size
  end

  def total_product_quantity?
    new_list = @product_list.each do |prod|
      product_quantity? prod
    end
    new_list.size
  end

end
