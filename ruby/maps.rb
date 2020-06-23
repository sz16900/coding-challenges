# frozen_string_literal: true

def appears_most_times(array)
  # write your code here
  times = {}
  array.each do |x|
    times[x] ||= 0
    times[x] += 1
  end
  times
    # times.key(times.values.max)
  end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376])
# => 4376
