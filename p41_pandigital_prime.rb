=begin
Preston Copeland
September 2, 2015
Project Euler

Problem 41: Pandigital Prime

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?

Answer: 7652413 (solved myself)
Real runtime after rehearsal: 34 seconds

=end
require 'prime'
require 'benchmark'

def largest_pandigital_prime
  pandigital = [1,2,3,4,5,6,7,8,9]
  9.downto(2) do |i|
    p = pandigital.permutation(i).to_a
    p = p.map {|arr| arr.join.to_i}
    p = p.keep_if {|v| Prime.prime?(v)}
    if(p != [])
      p = p.keep_if do |prime|
        pandigital_flag = true
        prime_array = prime.to_s.split('')
        (1..i).each do |digit|
          if(!prime_array.include?(digit.to_s))
            pandigital_flag = false
          end
        end
        pandigital_flag
      end
    end
    if(p != [])
      return p.max
    end
  end
end

Benchmark.bmbm do |benchmark|
  benchmark.report('largest pandigital prime') do
    largest_pandigital_prime
  end
end


