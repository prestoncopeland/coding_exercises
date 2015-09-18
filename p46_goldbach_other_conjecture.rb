=begin
Preston Copeland
September 4, 2015
Retackled 9/18/15

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

Solved: 5777 (solved after Googling for help with an algorithm)
You are the 37093rd person to have solved this problem.
=end
require 'prime'

def goldbach
  primes = Prime.first 1000
  doubled_squares = (1..1000).map {|v| 2*(v**2)}
  odds = Array.new(10000, false)
  odds = odds.each_with_index.map {|v,i| v = true if( (i%2==0) || (Prime.prime?(i)) || i==1)}
  primes.each do |prime|
    doubled_squares.each do |d_square|
      num = prime + d_square
      odds[num] = true
    end
  end

  odds.index(odds.find {|v| v==false})
end


