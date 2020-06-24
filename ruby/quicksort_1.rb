# frozen_string_literal: true

def partition(array)
  # write your code here

  left = []
  right = []
  pivot = array.shift
  array.each do |int|
    if int <= pivot
      left << int
    else
      right << int
    end
  end

  left << pivot
  left + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
