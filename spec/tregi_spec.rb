require File.expand_path('../tregi', '__FILE__')

describe TRegi do
  it '商品1つをカゴにいれて購入' do
    item = Item.new('財布', 10_000)
    cart = Cart.new
    cart.add(item)

    expect(cart.fee).to eq 10_000
    expect(cart.purchase).to be_truthy
  end
end
