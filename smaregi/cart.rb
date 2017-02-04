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
    selected_products = @products.select do |current_product|
      current_product unless current_product != product
    end
    selected_products.size
  end

  def total_product_quantity
    @products.size
  end

end
