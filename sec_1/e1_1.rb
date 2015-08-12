=begin
Coding Practice
May 17, 2015

Determine if characters in a string are unique

Algorithm: Convert string to lowercase. Then take range for letters and see if string count of letters for all? is <= 1
=end

def is_uniq?(string)
  s = string.downcase
  ("a".."z").all?{|c| s.count(c) <= 1}
end