# Preston Copeland
# July 7, 2013
# Project Euler

# Problem 4: Largest Palindrome Product

=begin

A palindromic number reads the same both ways. The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.

Make a nested loop from 100 to 999.
Check if product is a palindrome.
Check if it's bigger than max.


max = 0
(100..999).each do |i|
  (100..999).each do |j|
      product = i*j
      product_s = product.to_s
      reversed = product_s.reverse
      if( (reversed==product_s) && product > max)
        max = product
      end
  end
end

puts "The maximum is #{max}"

 cleaning it up after looking at some others' code

=end

m = 0
900.upto(999){ |a|
  900.upto(999){ |b|
    s = (a*b).to_s
    m = [m, a*b].max if(s == s.reverse)
  }
}
puts "Maximum palindrome is #{ m }."






