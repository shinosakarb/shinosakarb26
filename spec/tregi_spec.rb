require File.expand_path('../lib/tregi', '__FILE__')

describe TRegi do
  before{
    @item = TRegi::Item.new('財布', 10_000)
    @cart = TRegi::Cart.new
    @cart.add(@item)
    @register = TRegi::Register.new(@cart)
  }

  it '商品1つをカゴにいれて丁度の金額で購入' do
    expect(@register.fee).to eq 10_000
    expect(@register.purchase(10_000)).to be_truthy
    expect(@register.surplus).to eq(0)
  end

  it 'お金を払って足りない場合、購入できない' do
    expect(@register.purchase(9_000)).to be_falsey
  end

  it 'お金を払って多い場合、購入できてお釣りを返す' do
    expect(@register.purchase(11_000)).to be_truthy
    expect(@register.surplus).to eq(1_000)
  end
end
