while true
	puts "Please enter the starting year:"
	starting_year = gets.chomp.to_i
	puts "Please enter the ending year:"
	ending_year = gets.chomp.to_i

	if starting_year > ending_year
		puts "The starting year should be smaller than ending year, try again!"
	else
		puts "Your inout is correct"
		while starting_year < ending_year
			if starting_year % 4 == 0 && starting_year % 100 != 0 || starting_year % 400 == 0
				puts "#{starting_year} is leap year!"
				starting_year = starting_year + 1
			else
				starting_year = starting_year + 1
			end
		end
		break
	end
end