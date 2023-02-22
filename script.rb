def stock_picker(arr)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  for i in 0...arr.length do 
    for j in (i+1)...arr.length do
      profit = arr[j] - arr[i]
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
    end
  end
  [buy_day,sell_day]
end






p stock_picker([17,3,6,9,15,8,6,1,10])