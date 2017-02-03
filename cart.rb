class Cart
  def initialize
    @item_list = []
  end

  def add(item)
    @item_list << item
  end

  def fee
    @item_list.inject(0){|sum, item| sum + item.price }
  end
end
