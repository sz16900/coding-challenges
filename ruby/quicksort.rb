# frozen_string_literal: true

def simple_quicksort(arr)
  return arr if arr.length <= 1

  middle = arr.shift
  left = []
  right = []
  arr.each do |x|
    if x <= middle
      left << x
    else
      right << x
    end
  end
  sorted = []
  sorted << simple_quicksort(left)
  sorted << middle
  sorted << simple_quicksort(right)
  flattened = sorted.flatten!
  puts flattened.join(' ')
  sorted

end

simple_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
