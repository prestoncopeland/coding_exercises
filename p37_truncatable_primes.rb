=begin
Preston Copeland
August 23, 2015
Project Euler

Problem 37: Truncatable Primes

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

Answer: 748317 (found myself)
=end

require 'Prime'

#note: refactored these two methods to 'drop' method below
def drop_front(number)
  number.to_s.split('')[1..-1].join.to_i
end

def drop_last(number)
  number.to_s.split('')[0...-1].join.to_i
end

# note: refactored this to truncatable_with_direction? and truncatable? methods below. I kept truncatable_sum the same.

def truncatable_left?(number)
  if(number/10 == 0)
    Prime.prime?(number)
  else
    Prime.prime?(number) && truncatable_left?(drop("front", number))
  end
end

def truncatable_right?(number)
  if(number/10 == 0)
    Prime.prime?(number)
  else
    Prime.prime?(number) && truncatable_right?(drop("last", number))
  end
end

def truncatable?(number)
  truncatable_left?(number) && truncatable_right?(number)
end

def truncatable_sum
  sum = 0
  counter = 0

  Prime.each(1000000) do |prime|
    break if counter == 11
    unless (prime < 10)
      if truncatable?(prime)
        sum += prime
        counter += 1
      end
    end
  end

  sum
end

=begin

This is an interesting problem. I refactored the above to the below. However, although the solution below 1) is four methods to the above's six and 2) follows DRY, I would argue that the above code is much more readable, so I kept the above as my principal solution.

require 'Prime'

#put "front" for drop front position, otherwise it will drop last
def drop(position, number)
  range = (position.eql? "front") ? 1..-1 : 0...-1
  number.to_s.split('')[range].join.to_i
end

def truncatable_with_direction?(direction, number)
  if(number/10 == 0)
    Prime.prime?(number)
  else
    Prime.prime?(number) && truncatable_with_direction?(direction, drop(direction, number) )
  end
end

def truncatable?(number)
  truncatable_with_direction?("front", number) && truncatable_with_direction?("last", number)
end

def truncatable_sum
  sum = 0
  counter = 0

  Prime.each(1000000) do |prime|
    break if counter == 11
    unless (prime < 10)
      if truncatable?(prime)
        sum += prime
        counter += 1
      end
    end
  end

  sum
end

=end
