# frozen_string_literal: true

def sum(number)
  return 1 if number == 1 || number == 0

  number + sum(number - 1)
end

puts sum(4)
puts sum(10)
