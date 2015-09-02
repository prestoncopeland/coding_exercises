=begin
Preston Copeland
August 19, 2015
finished September 2, 2015 (13:30-14:10)
Project Euler

Problem 32: Pandigital Products

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.
=end

#convert array part to integer
def convert_a_to_i array, index, length
  array.slice(index, length).join.to_i
end

#determine if a permutation, entered as an array, is a pandigital identity. There are two possibilities based on 9 digits: either the multiplicand has one digit, the multiplier has four, and the product has four, or the multiplicand has two digits, the multiplier has three, and the product has four.
def pand_id? array
  #first possibility
  pos_1 = []
  [[0,1],[1,4],[5,4]].each do |range|
    pos_1 << convert_a_to_i(array, *range)
  end
  id_1 = pos_1[0] * pos_1[1] == pos_1[2]

  pos_2 = []
  [[0,2],[2,3],[5,4]].each do |range|
    pos_2 << convert_a_to_i(array, *range)
  end

  id_2 = pos_2[0] * pos_2[1] == pos_2[2]

  return (id_1 || id_2)
end

#return the pandigital product
def pand_prod array
  array.slice!(5,4).join.to_i
end

def main
  all_perms = [1,2,3,4,5,6,7,8,9].permutation(9).to_a
  sols = all_perms.keep_if {|v| pand_id?(v)}
  sols.map {|v| pand_prod(v)}.uniq!.inject(:+)
end