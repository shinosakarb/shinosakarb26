require './cart'
require './product'
require './register'

describe 'Register' do
  describe '#checkout' do
    context 'when amount are enough' do
      it 'ok' do
        cart = Cart.new
        book = Product.new('book', 1200)
        cart.add(book)
        regi = Register.new
        money = 3000

        expect_result_message = "The total is 1200.\nThank you!"
        expect(regi.checkout(cart, money)).to eq(expect_result_message)
      end
    end

    context 'when amount are not enough' do
      it 'ng' do
        cart = Cart.new
        book = Product.new('book', 1200)
        cart.add(book)
        regi = Register.new
        money = 0
        expect_result_message = "The total is 1200.\nYou don't hve enough money."
        expect(regi.checkout(cart, money)).to eq(expect_result_message)

      end
    end
  end
end

