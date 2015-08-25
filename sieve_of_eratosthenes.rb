=begin
Preston Copeland
August 25, 2015
Project Euler

Sieve of Eratosthenes

Many of the Project Euler problems require the production of primes, so I thought I'd implement the sieve of Eratosthenes at least once. The function should return an array of primes up to a limit n.

=end

def list_primes(n)
  possible_primes = Array.new(n, true)

  (2..Math.sqrt(n)).each do |i|
    if(possible_primes[i])
      counter = 0
      j = i**2 + i*counter
      while(j < n)
        possible_primes[j] = false
        counter += 1
        j = i**2 + i*counter
      end
    end
  end

  primes = []
  (2..n).each do |n|
    primes << n if possible_primes[n]
  end

  primes

end