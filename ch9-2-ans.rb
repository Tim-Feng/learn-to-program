def old_roman_numeral num 
	roman = ''
	roman = roman + 'M' * (num        / 1000)
	roman = roman + 'D' * (num % 1000 /  500) 
	roman = roman + 'C' * (num %  500 /  100) 
	roman = roman + 'L' * (num %  100 /   50) 
	roman = roman + 'X' * (num %   50 /   10) 
	roman = roman + 'V' * (num %   10 /    5) 
	roman = roman + 'I' * (num %    5 /    1) 
	roman
end

# Obviously I don't have the concept of array yet. Or I didn't get used to use array as
# one of my solution to simplify the program.
# try harder!

# update 10/31: I am a idiot, there is nothing about array, it's just emply string.
# so my understanding should be acknowledging to push element into string.