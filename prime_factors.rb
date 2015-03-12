def prime_factors(num)
  prime_array = []
  primes = []
  Prime.each(num).map do |prime|
    until primes.inject(:*) == num
      if num % prime == 0
        primes << prime
      end
    end
  end
  primes
end