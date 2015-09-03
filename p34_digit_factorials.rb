=begin
Preston Copeland
September 3, 2015
Project Euler

Problem 34: Digit Factorials

145 is a curious number, as 1! + 4! + 5! =
1 + 24 + 120 = 145.

Find the sum of all numbers which are equal
to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they
are not included.

Answer: 40730 (found myself)
58307th person to solve it
Runs in about 8 seconds.
=end

def factorial n
  (1..(n.zero? ? 1 : n)).inject(:*)
end

def sum_digit_factorials n
  n.to_s.chars.map(&:to_i).map{|w| factorial(w)}.inject(:+)
end

def digit_factorial
  sum = 0
  (3..1000000).each do |n|
    if( sum_digit_factorials(n) == n)
      sum += n
    end
  end
  sum
end

=begin
First version of

def sum_digit_factorials n
  n.to_s.split('').map {|v| v.to_i}.map {|w| factorial(w)}.inject(:+)
end

Then I googled around and found a cleaner way
to do the first part.

First version of

def factorial n
  if( n==1 || n==0 ) then 1 else n * factorial(n-1) end
end

Then googled around, discovered there is in fact no factorial function in Ruby standard library (weird), and found the cleaner version above.
=end


