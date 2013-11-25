def sort some_array 
  recursive some_array, []
end

def recursive unsorted, sorted 
  if unsorted.length == 0
    return sorted
  end

  smallest       = unsorted.pop
  still_unsorted = []

  unsorted.each do |test|
    if test.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test
    else
      still_unsorted.push test
    end
  end

  sorted.push smallest
  recursive(still_unsorted, sorted)
end

puts sort ["a", "A", "C", "d"]