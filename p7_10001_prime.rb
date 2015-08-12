# Preston Copeland
# July 9, 2013
# Project Euler

# P7: 10_001 prime

=begin


By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

require 'prime'

n=1
counter = 0

while counter<10_001
  n += 1
  if(n.prime?)
    counter += 1
  end
end
puts n









