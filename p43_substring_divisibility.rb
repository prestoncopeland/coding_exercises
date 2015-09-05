=begin
Preston Copeland
September 3, 2015
Project Euler

Problem 43: Substring Divisibility

The number, 1406357289, is a 0 to 9 pandigital
number because it is made up of each of the
digits 0 to 9 in some order, but it also
has a rather interesting sub-string divisibility property.

Let d1 be the 1st digit, d2 be the 2nd digit,
and so on. In this way, we note the following:

    d2d3d4=406 is divisible by 2
    d3d4d5=063 is divisible by 3
    d4d5d6=635 is divisible by 5
    d5d6d7=357 is divisible by 7
    d6d7d8=572 is divisible by 11
    d7d8d9=728 is divisible by 13
    d8d9d10=289 is divisible by 17

Find the sum of all 0 to 9 pandigital numbers
with this property.

Answer: 16695334890 (solved myself)
Became 35,958th person to do so.
Real runtime after rehearsal: 10.6 s
=end

require 'benchmark'

def slice_divisible? number, position, divisor
  (number.slice(position-1,3).join.to_i)%divisor == 0
end

def substr_div
  pan = (0..9).to_a.permutation(10).to_a
  divisors = [0,0,2,3,5,7,11,13,17]

  8.downto(2) do |position|
    pan.keep_if {|v| slice_divisible?(v,position,divisors[position])}
  end

  pan.map {|v| v.join.to_i}.inject(:+)
end

Benchmark.bmbm do |benchmark|
  benchmark.report('substring divisibility') do
    substr_div
  end
end

