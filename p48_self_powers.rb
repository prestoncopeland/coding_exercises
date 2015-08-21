=begin
Preston Copeland
August 21, 2015
Project Euler

Problem 48: Self Powers

The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

Answer: 9110846700 (found myself)
=end

def self_powers
  (1..1000).map {|i| i**i}.reduce(:+).to_s.slice(-10,10).to_i
end