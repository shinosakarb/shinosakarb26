require File.expand_path('../lib/tregi', '__FILE__')

describe TRegi do
  describe '商品1つをカゴに入れて購入' do
    before{
      @item = TRegi::Item.new({name: '財布', price: 10_000})
      @cart = TRegi::Cart.new
      @cart.add(@item)
      @register = TRegi::Register.new(@cart)
    }

    it '丁度の金額で購入' do
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

  describe '値段の違う商品2つを購入' do
    before{
      item1 = TRegi::Item.new({name: '財布', price: 10_000})
      item2 = TRegi::Item.new({name: '時計', price: 5_000})
      @cart = TRegi::Cart.new
      @cart.add(item1)
      @cart.add(item2)
      @register = TRegi::Register.new(@cart)
    }

    it '値段の違う商品2つをカゴにいれて丁度の金額で購入' do
      expect(@register.fee).to eq 15_000
      expect(@register.purchase(@register.fee)).to be_truthy
      expect(@register.surplus).to eq(0)
    end
  end
end
