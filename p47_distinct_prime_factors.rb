=begin
Preston Copeland
September 11, 2015
Project Euler

Problem 47

The first two consecutive numbers to have two distinct prime factors are:

14 = 2 × 7
15 = 3 × 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2² × 7 × 23
645 = 3 × 5 × 43
646 = 2 × 17 × 19.

Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?

12:15-12:25 Solved in 10 minutes!
Answer: 134043 (solved myself)
35242nd person to do so.
=end
require 'prime'

def distinct_prime_factors
  n = 2
  while true
    if ((n..n+3).map {|i| Prime.prime_division(i).size == 4}.all?)
      return n
    end
    n += 1
  end
end
