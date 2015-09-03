=begin
Preston Copeland
September 2, 2015
Project Euler

Problem 21: Amicable Numbers

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

My notes:

The sum of the factors of a number is found by taking the product of the sum of each prime factor added to itself by increasing exponents. (That made more sense in my head, admittedly.)

Answer: 31626 (solved myself)
=end
require 'prime'

def sum_primes prime, degree
  sum = Array.new(degree+1)
  sum.map.with_index {|v, i| v = prime**i}.inject(:+)
end

#n must be 2 or greater
def sum_divisors n
  n.prime_division.map {|arr| sum_primes(*arr)}.inject(:*) - n
end

def amicable_numbers bound
  sols = []
  (2...bound).each do |am|
    b = sum_divisors(am)
    if(b > 1 && sum_divisors(b) == am && b != am)
      sols << am
      sols << b
    end
  end
  sols.uniq.inject(:+)
end
