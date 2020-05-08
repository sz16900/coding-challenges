def leftmost_nodes_sum(array)
    sum = array[0]
    indx = 0
    while indx < array.length-1
        indx = (2*indx)+1
        sum += array[indx] if indx < array.length
    end
    sum
end
  
  puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
  # => 11