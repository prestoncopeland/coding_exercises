#needs to be debugged

def get_largest_prime_factor(n)
  temp_prime = n
  (2..temp_prime).each do |x|
    if(temp_prime % x == 0)
      temp_prime = temp_prime/x
    end
  end
  puts temp_prime
end

