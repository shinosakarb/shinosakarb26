require './cart'
require './product'
require './register'

cart = Cart.new

book = Product.new("book", 200)
bookmark = Product.new("bookmark", 200)

cart.add book
cart.add book
cart.add book
cart.add book

cart.add bookmark

p cart.product_quantity? bookmark
p cart.total_product_quantity?
