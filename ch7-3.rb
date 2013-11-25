while true
	year = rand(21) + 1930
	puts "Say something to Grandma, loud and clear!"
	sentence = gets.chomp
	if sentence.to_s == "BYE"
		puts "\"HUH?! SPEAK UP, SONNY!\""
		puts "Say something to Grandma, loud and clear!"
		sentence_2 = gets.chomp
			if sentence_2 == "BYE"
				puts "\"HUH?! SPEAK UP, SONNY!\""
				puts "Say something to Grandma, loud and clear!"
				sentence_3 = gets.chomp
				if sentence_3 == "BYE"
					puts "Grandma wants to sleep and ask you to leave!"
					break
				elsif sentence == sentence.upcase
					puts "Grandma yells: \"NO, NOT SINCE #{year}!\" "
				else
					puts "\"HUH?! SPEAK UP, SONNY!\""
				end
			elsif sentence == sentence.upcase
				puts "Grandma yells: \"NO, NOT SINCE #{year}!\" "
			else
				puts "\"HUH?! SPEAK UP, SONNY!\""
			end
	elsif sentence == sentence.upcase
		puts "Grandma yells: \"NO, NOT SINCE #{year}!\" "
	else
		puts "\"HUH?! SPEAK UP, SONNY!\""
	end
end