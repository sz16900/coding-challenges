def insertion_sort(array)
    # write your code here
    theNum = array[-1]
    # array[-1] = array[-2]
    (0...array.length).reverse_each do |x|
        if array[x-1] >= theNum
             if x-1 < 0
                array[0] = theNum
                puts array.join(' ')
             else
                array[x] = array[x-1]
                puts array.join(' ')
             end
            else
                array[x] = theNum
                puts array.join(' ')
                break
            end
    end
end

  
  insertion_sort([1, 3, 2])
  # => 1 3 3
  #    1 2 3
  
  puts '-' * 20
  
  insertion_sort([2, 3, 4, 5, 6, 7, 8, 9, 10, 1])
  # => 1 4 6 9 9
  #    1 4 6 6 9
  #    1 4 4 6 9
  #    1 3 4 6 9