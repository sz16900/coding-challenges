# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Setup
  mid_point = (min_interval + max_interval) / 2

  # Exit condition
  return mid_point if mid_point**2 == number
  return 0 if (max_interval - 1) == min_interval

  if number > mid_point**2
    return sqrt_recursive(number, min_interval = mid_point, max_interval)
  end

  sqrt_recursive(number, min_interval, mid_point) if number < mid_point**2
end

puts sqrt(81)
puts sqrt(7056)
