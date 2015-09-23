=begin
Preston Copeland
September 22, 2015
Project Euler

Problem 92: Square Digit Chains

A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

For example,

44 → 32 → 13 → 10 → 1 → 1
85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

How many starting numbers below ten million will arrive at 89?

Answer: 8581146 (solved myself)
26724th person to solve it.
=end

def sq_digit number
  while(number != 89 && number != 1)
    number = number.to_s.chars.map {|v| (v.to_i)**2}.inject(:+)
  end
  number
end

def sq_digit_chain
  sum = 0
  (1..10000000).each do |n|
    if(sq_digit(n) == 89)
      sum += 1
    end
  end
  sum
end
