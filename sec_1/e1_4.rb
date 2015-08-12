=begin
May 19, 2015
Preston Copeland
Coding practice

Write a function to replace all spaces in a string with '%20.'

Algorithm: Strip the string of leading/trailing whitespace. Do a global sub of spaces in the remaining string.

=end

def mod_20(string)
  string.strip!.gsub!(/\s+/, '%20')
end

