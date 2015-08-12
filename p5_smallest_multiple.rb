# Preston Copeland
# July 8, 2013
# Project Euler

# Problem 5: Smallest multiple

=begin
520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all
of the numbers from 1 to 20?
=end


n=20

while(true)
  winner = false
  counter = 0
  (1..20).each { |factor|
    if(n%factor==0)
      counter +=1
    end
  }
  if(counter==20)
    break
  else
    counter = 0
    n +=1
  end
end

puts n


# Answer: 232792560

# better version
=begin

require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

=end