=begin
Preston Copeland
September 4, 2015
Project Euler

Problem 46: Goldbach's Other Conjecture

It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

9 = 7 + 2×12
15 = 7 + 2×22
21 = 3 + 2×32
25 = 7 + 2×32
27 = 19 + 2×22
33 = 31 + 2×12

It turns out that the conjecture was false.

What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

Algorithm
1. Iterate over all odd numbers
1b. If result is prime, next.
2. Subtract all prime numbers less than the number
3. If result is odd, continue.
4. If result is even, divide by 2.
5. Check if result is a perfect square.
6. If it is, next guess.
7. If it isn't and we're out of primes, return the number.
=end
require 'prime'

def goldbach_other_conjecture
  conjecture = 3
  while true

    if(Prime.prime?(conjecture))
      conjecture += 2
      next
    end

    Prime.each(ubound=conjecture) do |prime|

    end

    conjecture +=2
  end
end


