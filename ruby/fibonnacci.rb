# frozen_string_literal: true

def fibonnacci(n)
  puts n
  return 0 if n.zero?
  return 1 if n == 1

  fibonnacci(n - 1) + fibonnacci(n - 2)
end

puts fibonnacci(5)
