=begin
Preston Copeland
August 29, 2015
Project Euler

Problem 52: Permuted Multiples

It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

=end

def convert number
  number.to_s.split('').sort
end

def smallest_perm_multiples
  x = 1
  while true
    a = convert(x)
    b = convert(2*x)
    c = convert(3*x)
    d = convert(4*x)
    e = convert(5*x)
    f = convert(6*x)
    if( a==b && a==c && a==d && a==e && a==f )
      break
    end
    x += 1
  end
  x
end

