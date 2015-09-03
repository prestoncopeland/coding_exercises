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
=end

def factorial n
  if( n==1 || n==0 ) then 1 else n * factorial(n-1) end
end

def sum_digit_factorials n
  n.to_s.split('').map {|v| v.to_i}.map {|w| factorial(w)}.inject(:+)
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


