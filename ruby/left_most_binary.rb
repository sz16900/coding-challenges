# frozen_string_literal: true

def leftmost_nodes_sum(array)
  sum = array[0]
  indx = 0
  while indx < array.length - 1
    puts indx = (2 * indx) + 1
    sum += array[indx] if indx < array.length
  end
  sum
end

puts leftmost_nodes_sum([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 11
