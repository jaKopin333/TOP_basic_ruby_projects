#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# Example:
#   > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

# Hints:
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

# define your paramters, looking to find best profits for certain days.
def stock_picker(prices)
  best_profit = 0
  best_days = []
#Using each_with_index to go through the array in order to find the best buy price and date followed by best sell price and date.
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      # So if sell_day is greater than buy_day then take your current profit equals the current sell pirce minus the current buy price
      if sell_day > buy_day
        current_profit = sell_price - buy_price
      # another if statement...if the current profit is greater than the best profit by doing the above math (minus)
      # if the current profit is better than the best profit we've found so far,
      # update best_profit and store the buy/sell days
      # with current profit then take best_days and see what the best buy_day is and the best sell day is
        if current_profit > best_profit
          best_profit = current_profit
          best_days = [buy_day, sell_day]
        end
      end

    end
  end
# return the best buy and sell days found
  best_days
end
#prints the results
p stock_picker([400, 50, 25, 15, 2, 3, 55, 100, 1000, 88, 90, 24])
# which should be 4 and 8