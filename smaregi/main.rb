require './cart'
require './product'
require './register'

regi = Register.new
cart = Cart.new

book = Product.new("book", 200)
bookmark = Product.new("bookmark", 200)

cart.add book
cart.add book
cart.add book
cart.add book

cart.add bookmark

regi.checkout cart, 3200
