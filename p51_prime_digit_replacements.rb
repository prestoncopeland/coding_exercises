=begin
Preston Copeland
September 14, 2015
Project Euler

Problem 51: Prime Digit Replacements

By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.

Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

=end
require 'prime'

def prime_replacement
  primes = Prime.first 10000
  primes = primes.group_by {|p| p.to_s.size}
  grouped_primes = primes.values
  repeating_primes = []
  grouped_primes.each do |prime_ary|
    repeating_primes << prime_ary.select do |p|
      (p.to_s.split("").size - p.to_s.split("").uniq.size) > 0
    end
  end
  #repeated_primes is currently a nested array (sorted according to digit size) of primes with repeating digits
end