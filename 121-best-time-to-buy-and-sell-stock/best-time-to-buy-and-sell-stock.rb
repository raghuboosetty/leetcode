# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    # O(n^2) - timeout error
    # profit = 0
    # prices.each_with_index do |buy, buy_index|
    #     (prices[buy_index+1..-1]).each do |sell|
    #         next if sell < buy
    #         profit = (sell - buy) if (sell - buy) > profit
    #     end
    # end
    # profit

    # O(n)
    buy = prices[0]
    profit = 0
    prices.each do |sell|
        if sell < buy
            buy = sell
        else
            profit = [profit, (sell - buy)].max
        end
    end
    profit
end