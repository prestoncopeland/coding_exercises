=begin
Preston Copeland
August 30, 2015
Project Euler

Problem 56: Maximum Digit Sum

A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

Answer: 972 (found myself)
=end

def digit_sum number
  number.to_s.split('').map {|digit| digit.to_i}.reduce(:+)
end

def max_digit_sum
  arr_1 = Array.new(100) {|index| index + 1}
  arr_2 = Array.new(100) {|index| index + 1}
  arr_1.product(arr_2).map {|elem| elem[0] ** elem[1]}.map {|num| digit_sum(num)}.max
end