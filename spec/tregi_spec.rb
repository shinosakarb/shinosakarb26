require File.expand_path('../lib/tregi', '__FILE__')

describe TRegi do
  before{
    @item = Item.new('財布', 10_000)
    @cart = Cart.new
    @cart.add(@item)
    @register = Register.new(@cart)
  }

  it '商品1つをカゴにいれて購入' do
    expect(@register.fee).to eq 10_000
    expect(@register.purchase(10_000)).to be_truthy
  end

  it 'お金を払って足りない場合、購入できない' do
    expect(@register.purchase(9_000)).to be_falsey
  end
end
