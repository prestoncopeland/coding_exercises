=begin
Preston Copeland
September 5, 2015
Project Euler

Problem 50: Consecutive Prime Sum

The prime 41, can be written as the sum of six consecutive primes:
41 = 2 + 3 + 5 + 7 + 11 + 13

This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?

Algorithm:
1. Start adding up primes.
2. When the result is larger than one million, subtract last prime added.
3. Check if result is prime. If so, return.
4. Continue to subtract primes until result is prime.
5. Return result.
=end

require 'prime'

def consec_prime_sum
  result, counter, primes = 0, 0, []
  Prime.each do |prime|
    if(result > 1000000)
      break
    else
      result += prime
      counter += 1
      primes << prime
    end
  end

  primes = primes.reverse
  primes.each do |prime|
    result = result - prime
    counter = counter - 1
    if(Prime.prime?(result) || result < 2)
      break
    end
  end
  return result, counter
end
