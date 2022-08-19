def stock_prices(prices)
  min_price = prices[0]
  index_min = 0
  profit = 0
  best_days = []

  prices.each.with_index do |price, index|
    if price < min_price
      min_price = price
      index_min = index
    end

    if (price - min_price) > profit
      profit = (price - min_price)
      best_days = [index_min, index]
    end
  end
  print best_days
end

prices = [17,3,6,9,15,8,6,1,10]

stock_prices(prices)