module TRegi
  class Item
    attr_accessor :name
    attr_accessor :price

    #def initialize(name, price)
    def initialize(params)
      @name = params[:name]
      @price = params[:price]
    end
  end
end
