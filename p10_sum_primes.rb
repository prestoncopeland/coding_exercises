# Preston Copeland
# July 10, 2013
# Project Euler

#Problem 10: Summation of primes

=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

# Works!

require 'prime'

puts (2...2_000_000).selecto{|num| num.prime?}.inject(:+)
