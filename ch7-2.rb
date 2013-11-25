while true
	year = rand(21) + 1930
	puts "Say something to Grandma, loud and clear!"
	sentence = gets.chomp
	if sentence == "BYE"
		puts "Grandma wants to sleep and ask you to leave!"
		break
	elsif sentence == sentence.upcase
		puts "Grandma yells: \"NO, NOT SINCE #{year}!\" "
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end