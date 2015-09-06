=begin
Preston Copeland
September 6, 2015
Project Euler

Problem 57: Square Root Convergents

It is possible to show that the square root of two can be expressed as an infinite continued fraction.

√ 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...

By expanding this for the first four iterations, we get:

1 + 1/2 = 3/2 = 1.5
1 + 1/(2 + 1/2) = 7/5 = 1.4
1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...

The next three expansions are 99/70, 239/169, and 577/408, but the eighth expansion, 1393/985, is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.

In the first one-thousand expansions, how many fractions contain a numerator with more digits than denominator?

Answer: 153 ???
=end
require 'fraction'

def sqrt_expansion iteration
  iteration -= 1
  x,y = 3,2
  iteration.times do |i|
    x,y = x+y+y,x+y
  end
  [x,y]
end

def sqrt_convergents
  counter = 0
  (1..1000).each do |i|
    if (sqrt_expansion(i)[0].to_s.size > sqrt_expansion(i)[1].to_s.size)
      counter += 1
    end
  end
  counter
end