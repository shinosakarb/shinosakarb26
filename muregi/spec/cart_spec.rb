require 'spec_helper'

describe Muregi::Cart do
  let(:product1) { Muregi::Product.new(name: 'sample', price: 100) }
  let(:cart) { Muregi::Cart.new }

  describe 'add' do
    example do
      cart.add product1
      expect(cart.product_list).to include(
        product1
      )
    end
  end
end
