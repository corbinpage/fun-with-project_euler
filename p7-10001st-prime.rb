

def prime?(num)
  return false if num <= 1
  2.upto(num/2) do |i|
    return false if (i!=num && num % i == 0)
  end
  return true
end



def run_prime_finder
  primes = []
  i = 2

  while primes.count <= 10000
    if prime?(i)
      primes << i 
      puts i 
    end
    i += 1
  end
  puts primes.inspect
  puts primes.last
end

run_prime_finder

