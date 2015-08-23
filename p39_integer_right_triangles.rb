=begin
Preston Copeland
August 23, 2015
Project Euler

Problem 39: Integer Right Triangles

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?

Answer: 840 (found myself)
=end

def maximize_p_solutions
  perimeters = Array.new(1001, 0)
  (1..1000).each do |a|
    (1..1000).each do |b|
      c = Math.sqrt(a**2 + b**2)
      if( (c == c.to_i) && (a + b + c <= 1000) )
        p = a + b + c
        perimeters[p] += 1
      end
    end
  end
  perimeters.index(perimeters.max)
end