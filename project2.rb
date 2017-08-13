def stock_picker(prices)
	days = []
	max_profit = 0
	prices.each do |x|
		for i in (prices.index(x) + 1)..(prices.length - 1)
			profit = prices[i] - x
			if profit > max_profit
				max_profit = profit
				days[0], days[1] = prices.index(x), i
			end
		end
	end
	if max_profit > 0
		puts "You should buy on day #{days[0] + 1} and sell on day #{days[1] + 1}."
	else
		puts "Stay away!"
	end
end

print 'Enter prices separated by a comma and space. '
prices = gets.chomp
prices = prices.split(", ").map do |x|
	x.to_i
end
stock_picker(prices)