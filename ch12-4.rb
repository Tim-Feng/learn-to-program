birth_date = {}
File.read('ch12-4.txt').each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' &&
        first_comma < line.length
    first_comma = first_comma + 1
  end
  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_date[name] = date
end

puts "Please enter who's B-Day you want to know:"
name = gets.chomp
puts birth_date[name]