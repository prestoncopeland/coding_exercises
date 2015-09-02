=begin
Preston Copeland
September 1, 2015
Project Euler

Problem 62: Cubic Permutations

The cube, 41063625 (3453), can be permuted to produce two other cubes: 56623104 (3843) and 66430125 (4053). In fact, 41063625 is the smallest cube which has exactly three permutations of its digits which are also cube.

Find the smallest cube for which exactly five permutations of its digits are cube.

=end

def cubic_permutations
  i = 2
  while true
    cube = i**3
    cube_permutations = cube.to_s.split('').map {|n| n.to_i}.permutation.to_a.map {|v| v.join.to_i}
    break if( cube_permutations.keep_if {|n| n**(1/3.0) == (n**(1/3.0)).to_i  }.size == 5)
    i += 1
  end
  i
end