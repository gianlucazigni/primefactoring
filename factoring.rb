def factor(num)
factors = Array.new
x = 2
	until num == 1
		if num < 0
			factors << -1
			num *= -1
		elsif num % x == 0
			num /= x
			factors << x
			x = 2
		else
			x += 1
		end
	end
	
	puts "Your Factors are:"
	p factors
	
end

input = 1

while input != 0
	puts "\nWhat number would you like to factor?"
	puts "Enter 0 to exit."
	input = gets.chomp.to_i
	break if input == 0
	factor(input)
end



