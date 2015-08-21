=begin
Preston Copeland
August 21, 2015
Project Euler

Problem 40: Champernowne's Constant

An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

Answer: 210 (solved myself)

=end

def champernowne
  c= []
  (1..1000000).each do |x|
    c << x
  end
  champernowne = c.join.split('')
  (0..6).map {|i| champernowne[(10**i)-1].to_i }.reduce(:*)
end


