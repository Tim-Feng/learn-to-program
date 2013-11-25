def sort some_array # This "wraps" recursive_sort.
  recursive some_array, []
end

def recursive unsorted, sorted 
  # Your fabulous code goes here.
  if unsorted.length == 0
    return sorted
  end

  # here the variable "smallest" is not really the smallest but only a filter
  # we will use this filter to find out the real smallest element from unsorted array
  # so we just pick one element by .pop
  smallest       = unsorted.pop
  still_unsorted = []

  # here is how the filter works:
  # we use .each to compare every single element |test| with "smallest"
  # if |test| is smaller than "smallest", we kick the original "smallest" back to the unsorted
  # and re-define the "smallest" to the |test|
  # if |test| is greater than "smallest", we kick back |test| to the unsorted vice versa.
  puts "a" + smallest.to_s
  puts "a" + unsorted.to_s
  
  unsorted.each do |test|
    if test < smallest
      still_unsorted.push smallest
      # the key is to re-name the smallest
      smallest = test
      puts "b" + smallest.to_s
      puts "b" + still_unsorted.to_s
    else
      still_unsorted.push test
      puts "c" + smallest.to_s
      puts "c" + still_unsorted.to_s
    end
  end
  # above can filter the real smallest element
  # and now we have "smallest" and the array still_unsorted
  sorted.push smallest
  puts "d" + sorted.to_s
  recursive(still_unsorted, sorted)
end

# think about it, if user inout a series of words and I've transferred it into an some_array
# That will be some_array used in the method "sort" 

sort [5, 3, 1, 4, 2, 7, 9, 12, 10, 8, 11, 11, 11]