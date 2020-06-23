# frozen_string_literal: true

def divisibleSumPairs(n, k, ar)
  counter = 0
  iter = 0
  while iter < ar.length
    (iter + 1...n).each do |x|
      counter += 1 if (ar[x] + ar[iter]) % k == 0
    end
    iter += 1
  end
  counter
end

divisibleSumPairs(6, 3, [1, 3, 1, 6, 1, 2])
