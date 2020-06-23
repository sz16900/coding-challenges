# frozen_string_literal: true

def repeatedString(s, n)
  if !s.include? 'a'
    0
  elsif only_a?(s)
    n
  else
    counter = 0
    repeats = s.length % n
    substring = n - s.length * repeats
    substring.times { |x| counter += 1 if s[x] == 'a' }
    counter += s.count('a') * repeats
  end
end

def only_a?(s)
  cnt = 0
  chars = s.split('')
  chars.each do |x|
    cnt += 1 if x == 'a'
  end
  return true if cnt == s.length

  false
end

puts only_a?('aaaabaaa')

puts repeatedString('aba', 10)
