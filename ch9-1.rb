def ask question 
	while true
    puts question
    reply = gets.chomp.downcase

		if reply == 'yes'
			return true
		end
		if reply == 'no'
      return false
		end
    
    puts 'Please answer "yes" or "no".' 
  end
	
	# answer # This is what we return (true or false). 
end
  
  puts 'Hello, and thank you for...'
  puts
	ask 'Do you like eating tacos?' # Ignore this return value 
	ask 'Do you like eating burritos?' # And this one
	wets_bed = ask 'Do you wet the bed?' # Save this return value ask 'Do you like eating chimichangas?'
  ask 'Do you like eating sopapillas?'
  puts 'Just a few more questions...'
  ask 'Do you like drinking horchata?'
  ask 'Do you like eating flautas?'
  puts
  puts 'DEBRIEFING:'
  puts 'Thank you for...'
  puts
  puts wets_bed