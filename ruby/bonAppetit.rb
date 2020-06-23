# frozen_string_literal: true

def bonAppetit(k, bill, b)
  total_bill = bill.inject(:+)
  anaOwes = (total_bill - bill[k]) / 2
  return (total_bill / 2) - anaOwes if anaOwes != b

  'Bon Appetit'
end

puts bonAppetit(1, [3, 10, 2, 9], 7)
