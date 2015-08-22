=begin
Preston Copeland
August 22, 2015
Project Euler

Problem 36: Double Base Palindromes

The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)

Answer: 872187 (solved myself)
=end

def convert_base_2(number)
  binary = []
  while(number != 0)
    remainder = number%2
    binary.unshift(remainder)
    number = number/2
  end
  binary.join.to_i
end

def reverse_number(number)
  number.to_s.split('').reverse.join.to_i
end

def double_palindrome?(number)
  reversed_number = reverse_number(number)
  binary_number = convert_base_2(number)
  reversed_binary_number = reverse_number(binary_number)
  (number == reversed_number && binary_number == reversed_binary_number)
end

def sum_double_palindromes
  sum = 0

  (0...1000000).each do |x|
    if double_palindrome?(x)
      sum += x
    end
  end

  sum
end

=begin
Here's a much more elegant solution I found in the solution forum. It takes advantage of some of Ruby's built-in functions.
=end

def double_palindromes
  answer=0
  for i in 1..999999
    if i.to_s == i.to_s.reverse
      x = i.to_s(2)
      if x == x.reverse
        answer = answer + i.to_i
      end
    end
  end
  answer
end


