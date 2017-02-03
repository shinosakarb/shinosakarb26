class Cart
  def initialize
    @item_list = []
  end

  def add(item)
    @item_list << item
  end


  def fee
    sum = 0

    @item_list.each do |item|
      sum += item.price
    end

    sum
  end
end
