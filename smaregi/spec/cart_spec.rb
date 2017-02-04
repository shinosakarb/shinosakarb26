require './cart'
require './product'

describe 'Cart' do
  describe '#add' do
    context 'when add a book to the cart' do
      it 'shoud increase product_list size by 1' do
        cart = Cart.new
        book = Product.new('book')
        cart.add(book)
        expect(cart.product_list.size).to eq(1)
      end
    end
  end

  describe '#delete' do
  end
end
