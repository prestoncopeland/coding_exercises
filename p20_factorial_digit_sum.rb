=begin
Preston Copeland
August 18, 2015
Project Euler

Problem 20: Factorial Digit Sum

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

Answer: 648 (found myself)

=end

def factorial(number)

  (1..number).reduce(:*)

end

def sum_digits(number)

  number.to_s.split("").map {|x| x.to_i}.reduce(:+)

end

def factorial_digit_sum(number)

  sum_digits(factorial(number))

end

