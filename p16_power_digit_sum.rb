=begin
Preston Copeland
August 13, 2015
Project Euler Problem 16: Power Digit Sum

2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?

=end

def power_digit_sum(number)
  place_value = number.to_s.length-1
  sum = 0

  place_value.downto(0) do |place|
    power = 10**place
    digit = number/(power)
    sum += digit
    number = number % (power)
  end

  sum
end