=begin
Preston Copeland
August 26, 2015
Restarted September 8, 2015
Project Euler

Problem 49: Prime Permutations

The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

What 12-digit number do you form by concatenating the three terms in this sequence?

1. Find sets of 4-digit numbers that are permutations of each other.
2. Traverse the array by threes, checking to see if each 3-set fits the rules.
3. If it fits the rules, stop the traversal and output the three numbers concatenated.

=end
require 'prime'

#takes number, returns array of permutations
def num_perm number
  number.to_s.chars.permutation.to_a.map {|v| v.join.to_i}
end

def prime_permutations
  a = (0..9).to_a.permutation(4).to_a.map {|v| v.join.to_i}
  a = a.delete_if {|v| v.to_s.size != 4}
  a = a.delete_if {|v| !Prime.prime?(v)}
  a.each do |prime|
    p = num_perm(prime).delete_if {|v| v.to_s.size != 4}
    p = p.delete_if {|v| !Prime.prime?(v)}
    p = p.combination(3).to_a
      p.each do |b|
        arith = (b.inject(:+))/3 == b.sort[1]
        not_example = b.inject(:+) != 14451
        if( arith && not_example)
          return b.map {|v| v.to_s}.inject(:+)
        end
      end
  end
end

