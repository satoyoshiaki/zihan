puts "コーラ"
class VendingMachine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000].freeze


  def initialize
    @total = 0
    @drink_table = { cola: { price: 120, stock: 5 }}
  end

  #お金投入と合計、お金の選別
  def insert(money)
    if VendingMachine::AVAILABLE_MONEY.include?(money)
      @total += money
    else
      puts "#{money}円は使えません"
    end
  end

  #呼び出したらコーラを買えるかわかる
  def cola_prise
    if @total => @drink_table[:cola][:price]
      @okaneok = 0
    end
  end

  #呼出したらコーラの在庫があるかわかる
  def cola_number
    if @drink_table[:cola][:stock] > 0
      @kazuok = 0
    end
  end

  #金庫
  def safe
    @bank = 10000
    #とりあえず１万円入れておく
    #お金の種類ごとに仕分けして管理しないと本当はだめ
  end

  #コーラの購入
  def cola_buy
    if @okaneok && @kazuok == 0
      puts "コーラお飲みください冷たいコーラは最高です"
      honsu = @drink_table[:cola][:stock] - 1
      @drink_table[:cola][:stock] = honsu        
      #ここに売上金額を内部金庫に保存させるコード必要！
      @bank = @bank + 120
    else
      puts "購入できません"
      #お釣りを出す処理
      puts "#{@total} + 取り忘れにご注意ください"
    end
  end


  #商品情報
  def drink_stock
    if @drink_table[:cola][:stock] == 0
      puts "コーラは売り切れです"
    else
      puts "コーラ,価格:1本#{@drink_table[:cola][:price]}円,在庫:#{@drink_table[:cola][:stock]}本"
    end
  end

  def 
  
  #お釣りを出す
  def refund
    if @total == 0
      puts "払い戻すお金はありません"
    else
      puts "#{@total}円を払い戻し"
      @total = 0
    end
  end
end

