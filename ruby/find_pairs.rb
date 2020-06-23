
require 'set'

def find_pairs(array, k)
    array.each_with_index do |x, i|
        p x + array[i+1]
    end
end
  
  p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
  # => [[1, 11], [9, 3]]