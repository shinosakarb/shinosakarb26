require File.expand_path('../lib/tregi', '__FILE__')

describe TRegi do
  it '商品1つをカゴにいれて購入' do
    item = Item.new('財布', 10_000)
    cart = Cart.new
    cart.add(item)

    register = Register.new(cart)

    expect(register.fee).to eq 10_000
    expect(register.purchase).to be_truthy
  end
end
