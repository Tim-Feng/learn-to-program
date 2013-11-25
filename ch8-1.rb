words = []

while true
	puts "Please enter something, you will escape once you enter an empty line:"
	input = gets.chomp
	if input == ""
		break
	end
	
	words.push input
end

sorted_words = words.sort
puts sorted_words