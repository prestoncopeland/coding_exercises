=begin
Coding Practice
May 18, 2015
Preston Copeland

Given two strings, write a method to determine if one is a permutation of the other.

Algorithm: First check if string is empty string. Second check if strings are same size. Next, convert to arrays, sort them, and check if their equal.


=end

def p?(str_1, str_2)
  return false if str_1.empty?
  return false if str_1.size != str_2.size
  s_1 = str_1.gsub(/\s+/, "").downcase.split("").sort!
  s_2 = str_2.gsub(/\s+/, "").downcase.split("").sort!
  s_1==s_2
end

