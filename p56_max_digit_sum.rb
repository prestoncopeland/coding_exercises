=begin
Preston Copeland
August 30, 2015
Project Euler

Problem 56: Maximum Digit Sum

A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

Answer: 972 (found myself)

Note: I know, I could have used two for loops (i.e., (1...100).each do ), but I wanted to use map. I was feeling functional.

=end

def digit_sum number
  number.to_s.split('').map {|digit| digit.to_i}.reduce(:+)
end

def max_digit_sum
  arr_1 = Array.new(100) {|index| index + 1}
  arr_2 = Array.new(100) {|index| index + 1}
  arr_1.product(arr_2).map {|elem| elem[0] ** elem[1]}.map {|num| digit_sum(num)}.max
end

=begin
Here's one that I found in the solutions forum that strikes me as more elegant

max = 0
2.upto(100) do |a|
  2.upto(100) do |b|
    c = a ** b
    d = c.to_s.split(//)
    sum = 0
    d.each do |i|
      sum += i.to_i
    end
    max = sum if max < sum
  end
end
puts max

=end