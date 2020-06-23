# frozen_string_literal: true

def findDigits(n)
  cnt = 0
  n.to_s.chars.map(&:to_i).each do |x|
    cnt += 1 if x != 0 && n % x == 0
  end
  cnt
end

puts findDigits(1012)
