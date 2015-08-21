=begin
Preston Copeland
August 19, 2015
Project Euler

Problem 32: Pandigital Products

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

=end

#adapt Heap's algorithm

def permute_array(n, array)
  if n == 1
    return array
  else
    (0...n). each do |i|
      permute_array(n-1, array)
      if(n%2==0)
        array[i], array[n-1] = array[n-1], array[i]
      else
        array[0], array[n-1] = array[n-1], array[0]
      end
    end
    puts "#{permute_array(n-1, array)}"
  end
end

def pandigital_products

  pandigital_9 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

end
