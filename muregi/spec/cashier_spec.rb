require 'spec_helper'

describe Muregi::Cashier do
  let(:product1) { Muregi::Product.new(name: 'test1', price: 1_000) }
  let(:cart) { Muregi::Cart.new }
  let(:cashier) { Muregi::Cashier.new }

  describe 'add_to_cart' do
    before do
      cart.add product1
      cashier.add_to_cart cart
    end

    example do
      expect(cashier.cart).to eq cart
    end
  end

  describe 'total_amount' do
    let(:product2) { Muregi::Product.new(name: 'test2', price: 2_000) }

    before do
      cart.add product1
      cart.add product2
      cashier.add_to_cart cart
    end

    example do
      expect(cashier.total_amount).to eq 3_000 
    end
  end

  describe 'checkout!' do
    before do
      cart.add product1
      cashier.add_to_cart cart
    end

    context 'less than total amount' do
      example do
        expect { cashier.checkout!(500) }.to raise_error(Muregi::NotEnoughMoney)
      end
    end

    context 'equal total amount' do
      example do
        expect(cashier.checkout!(1_000)).to eq 0
      end
    end

    context 'greater than total amount' do
      example do
        expect(cashier.checkout!(2_000)).to eq 1_000
      end
    end
  end
end
