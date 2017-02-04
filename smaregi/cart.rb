class Cart

  attr_accessor :products

  def initialize
    @products = Array.new
  end

  def add(product)
    @products << product
  end

  def remove(product)
    @products.delete_at(@products.index(product))
  end

  def product_quantity(product)
    new_list = @products.select do |prod|
      prod unless prod != product
    end
    new_list.size
  end

  def total_product_quantity
    new_list = @products.each do |prod|
      product_quantity prod
    end
    new_list.size
  end

end
