# Angry boss. Write an angry boss program that rudely asks what you
# want. Whatever you answer, the angry boss should yell it back to you
# and then fire you. For example, if you type in I want a raise, it
# should yell back like this:

puts "Tell me what do you want."
answer = gets.chomp
puts "WHADDAYA MEAN \"#{answer.upcase}\"?!? YOU'RE FIRED!!"

# Table of contents. Here’s something for you to do in order to play
# around more with center, ljust, and rjust: write a program that will
# display a table of contents so that it looks like this:

line_width = 49
column1_width = 27
column2_width = 22
puts ("Table of Contents".center(line_width))
puts
puts ("Chapter 1:  Getting Started".ljust(column1_width) + "page  1".rjust(column2_width))
puts ("Chapter 2:  Numbers".ljust(column1_width) + "page  9".rjust(column2_width))
puts ("Chapter 3:  Letters".ljust(column1_width) + "page 13".rjust(column2_width))
=begin
Chapter 1:  Getting Started               page  1
Chapter 2:  Numbers						  page  9
Chapter 3:  Letters						  page 13
=end