class Array
  def shuffle
    arr = self
    shuf = []
    while arr.length > 0
      rand_index = rand(arr.length)
      shuf << (arr[rand_index])
      arr.delete_at(rand_index)
    end
    shuf
  end
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def roman
    roman = ''
    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)
    roman
  end
end