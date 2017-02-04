require './cart'
require './product'

describe 'Cart' do
  describe '#add' do
    context 'when add a book to the cart' do
      it 'shoud increase products size by 1' do
        cart = Cart.new
        book = Product.new('book', 1200)
        cart.add(book)
        expect(cart.products.size).to eq(1)
      end
    end
  end

  describe '#remove' do
    context 'when remove a book to the cart' do
      it 'shoud increase products size by 1' do
        cart = Cart.new
        book_a = Product.new('book_a', 1200)
        book_b = Product.new('book_b', 1350)
        cart.add(book_a)
        cart.add(book_a)
        cart.add(book_b)
        cart.remove(book_a)
        expect(cart.products.size).to eq(2)
      end
    end
  end
end
