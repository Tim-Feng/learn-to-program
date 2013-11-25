# Full name greeting. Write a program that asks for a person’s first
# name, then middle, and then last. Finally, it should greet the
# person using their full name. 

puts "Welcome! This is captain speaking, I'd like to know your fullname!"
puts "Please let me know your first name:"
first_name = gets.chomp
puts "Please let me know your middle name:"
middle_name = gets.chomp
puts "Please let me know your last name:"
last_name = gets.chomp

puts "Sir, your full name is #{first_name} #{middle_name} #{last_name}"

# a program that asks for a person’s favorite number. Have your
# program add 1 to the number, and then suggest the result as a bigger
# and better favorite number. (Do be tactful about it, though.)

puts "Hi, sir, please enter your favorite number:"
number = gets.chomp
# this will be string
puts "Try #{number.to_i + 1}, it's even better!"