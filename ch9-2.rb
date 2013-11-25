# def roman_numeral input_number
# end

def convert_number(s)
  begin
    Integer(s)
  rescue ArgumentError
    nil
  end
end


while true
	puts "Please enter a number, command+z to stop:"
	input = gets.chomp

	if convert_number(input) == nil
		puts "Please input an integer!"
	else
		input_number = input.to_i
		thousand = input_number/1000
		thousand_modulus = input_number%1000
		five_hundred = thousand_modulus/500
		five_hundred_modulus = thousand_modulus%500
		hundred = five_hundred_modulus/100
		hundred_modulus = five_hundred_modulus%100
		fifty = hundred_modulus/50
		fifty_modulus = hundred_modulus%50
		ten = fifty_modulus/10
		ten_modulus = fifty_modulus%10
		five = ten_modulus/5
		five_modulus = ten_modulus%5
		one = five_modulus/1

		puts "M" * thousand + "D" * five_hundred + "C" * hundred + "L" * fifty + "X" * ten + "V" * five + "I" * one
	end
end