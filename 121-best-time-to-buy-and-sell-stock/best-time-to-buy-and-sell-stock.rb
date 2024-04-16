# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    # min = prices.min
    # prices = prices.slice_after(min).to_a[1]
    # max = prices ? prices.max : nil
    # (!max.nil? && !min.nil?) && (max > min) ? max - min : 0

    # profit = 0
    # prices.each_with_index do |buy, buy_index|
    #     (prices[buy_index+1..-1]).each do |sell|
    #         next if sell < buy
    #         profit = (sell - buy) if (sell - buy) > profit
    #     end
    # end
    # profit

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