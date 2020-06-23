# frozen_string_literal: true

require 'prime'
require 'set'

def number_of_primes(arr)
  # write your code here
  num = 10_000
  times = 0
  sets = arr.to_set

  # Ltes use the built in Sieve :)
  sieveOfEratosthenes = Prime::EratosthenesGenerator.new.take_while { |i| i <= num }
  sets.each do |x|
    times += 1 if sieveOfEratosthenes.include?(x)
  end
  times
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3