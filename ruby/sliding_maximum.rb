def sliding_maximum(k, array)
    # your code here
    counter = 0
    arr = []
    while counter < array.length - (k-1)
        arr << array[counter..counter + (k-1)].max
        counter += 1
    end
    arr
end
  
  puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])
  # => [5, 7, 9, 9]
  