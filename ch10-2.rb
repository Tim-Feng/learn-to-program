def shuffle arr
  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)
    shuf << (arr[rand_index])
    arr.delete_at(rand_index)
  end
  puts shuf
end

shuffle ["A", "B", "C", "Code", "Jam"]