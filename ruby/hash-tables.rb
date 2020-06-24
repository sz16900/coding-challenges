# frozen_string_literal: true

# Hard one

def hash_table(arr)
  # write your code here
  times = {}
  arr.each do |x|
    mods = x.abs % 11
    (times[mods] ||= []) << x
  end
  times = times.sort.to_h
  newarr = []
  times.each do |_k, v|
    newarr.concat(v)
  end
  newarr
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234_004, 602, 7_400_000, 200_000_000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]
