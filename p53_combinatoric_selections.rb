=begin
Preston Copeland
August 31, 2015
Project Euler

Problem 53: Combinatoric Selections

There are exactly ten ways of selecting three from five, 12345:

123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, 5C3 = 10.

In general,
nCr = n! / r!(n−r)!,where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.

It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

How many not necessarily distinct values of nCr, for 1 ≤ n ≤ 100, are greater than one million?

Answer: 4075 (solved myself)
=end

def factorial x
  if x <= 1
    1
  else
    x * factorial(x-1)
  end
end

def nCr n, r
  factorial(n) / ( factorial(r) * factorial(n-r) )
end

def comb_sel
  count = 0
  (1..100).each do |n|
    (1..100).each do |r|
      if nCr(n, r) > 1000000
        count += 1
      end
    end
  end
  count
end


