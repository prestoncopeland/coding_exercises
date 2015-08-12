=begin
Preston Copeland
August 12, 2015(!)
Project Euler, Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

def collatz_chain(number)
  chain = 1

  while(number != 1)
    if(number%2 == 0)
      number /= 2
    else
      number = 3 * number + 1
    end
    chain += 1
  end

  chain
end

def longest_collatz_chain(upper_bound)
  max_number = 1
  max_chain = 1

  (1...upper_bound).each do |n|
    contender = collatz_chain(n)

    if contender > max_chain
      max_chain = contender
      max_number = n
    end

  end

  max_number
end



