def say_moo number_of_moos
	puts 'mooooooo...' * number_of_moos 
	'yellow submarine'
end

x = say_moo 3
puts x
puts x.capitalize + ', dude...'
puts x            + '.'

puts say_moo 1

# so, the return value of 'yellow submarine' only goes to x but not the method
# that's for sure since method need to be assigned to a variable first.