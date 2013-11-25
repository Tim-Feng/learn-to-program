def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  # index of array/hash is from 0
  # so transfer length to index need -1
  index = roman.length - 1

  # to pick from the first digit to the last digit (index >= 0)
  while index >= 0
    # pick the letter of current index
    c = roman[index].downcase
    # recrsive
    index = index - 1
    # find the value of the letter
    val = digit_vals[c]
    # if no corresponding letter (!val = true)
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end
    # the key begins here!!

    # we can keep counting val and let prev = val until some minus occurs(val < prev)
    # CCCLXV
    # V = 5,   val = 5,   prev = 5,   total = 5
    # X = 10,  val = 10,  prev = 10,  total = 15
    # L = 50,  val = 50,  prev = 50,  total = 65
    # C = 100, val = 100, prev = 100, total = 165
    # C = 100, val = 100, prev = 100, total = 265
    # C = 100, val = 100, prev = 100, total = 365

    # mcmxcix
    # x = 10,   val = 10,   prev = 10,   total = 10
    # i = 1,    val = -1,   prev = 10,   total =  9
    # c = 100,  val = 100,  prev = 100,  total = 109
    # x = 10,   val = -10,  prev = 100,  total = 99
    # m = 1000, val = 1000, prev = 1000, total = 1099
    # c = 100,  val = -100, prev = 1000, total = 999
    # m = 1000, val = 1000, prev = 1000, total = 1999
    if val < prev
      val = val * -1
      puts "a" + val.to_s
      puts "a" + prev.to_s
    else
      prev = val
      puts "b" + prev.to_s
    end
    total = total + val
  end

  total
end
puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))