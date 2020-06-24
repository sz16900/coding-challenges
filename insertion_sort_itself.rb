def sort_itself(array)
    # write your code here
    array.each_with_index do |num, index|
        if array[index+1] == nil
            return 
        end
        if array[index+1] < num
            grabbed = array.delete(array[index+1])
            array.each_with_index do |int, indx|
                if int >= grabbed
                    array.insert(indx, grabbed)
                    break
                end
            end
        end
        puts array.join(' ')
    end
    
  end
  
  sort_itself([1, 4, 3, 6, 9, 2])
  # => 1 4 3 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2
  #    1 2 3 4 6 9