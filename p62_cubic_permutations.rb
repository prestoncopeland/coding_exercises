=begin
Preston Copeland
September 1, 2015
Retackled on September 14, 2015
Retackled on September 17, 2015
Project Euler

Problem 62: Cubic Permutations

The cube, 41063625 (3453), can be permuted to produce two other cubes: 56623104 (3843) and 66430125 (4053). In fact, 41063625 is the smallest cube which has exactly three permutations of its digits which are also cube.

Find the smallest cube for which exactly five permutations of its digits are cube.

=end
def int? number
  epsilon = 1e-6
  (number - number.ceil).abs < epsilon
end

def cube? number
  epsilon = 1e-6
  ((number**(1/3.0) - (number**(1/3.0)).ceil)).abs < epsilon
end

def cubic_permutations
  i = 300
  while i < 1000
    cube = i**3
    permutations = cube.to_s.split("").map {|v| v.to_i}.permutation.to_a.select {|v| cube?(v.join.to_i) }
    unless permutations.nil?
      permutations.uniq!
      permutations = permutations.map {|v| v.join.to_i}
      unless permutations.nil?
        same_size = permutations.all? {|v| v.to_s.size == permutations[0].to_s.size}
        if(permutations.size == 5 && same_size)
          return cube
        end
      end
    end
    i += 1
  end
end