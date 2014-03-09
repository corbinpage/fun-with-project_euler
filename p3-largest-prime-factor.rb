def largest_prime(num)
  prime_factors = get_factors(num).flatten
  puts prime_factors.sort.last
end



def prime?(num)
  return false if num <= 1
  2.upto(num/2) do |i|
    return false if (i!=num && num % i == 0)
  end
  return true
end

def large_prime(num)
  high = num/2
  high.downto(2).each do |i|
    puts i.to_s
    puts "prime!! " + i if (num % i == 0 && prime?(i))
    return i if (num % i == 0 && prime?(i))
  end
end

def get_factors(num)

  factors = []
  i = 2
  while i <= num
    puts num.to_s + " " + i.to_s
    if prime?(num)
      factors << num
      i = num #just to break
    elsif num % i == 0 && prime?(i)
      factors << i
      num = num / i
      i -= 1
    end
    i += 1
  end
  puts factors.inspect
end

get_factors(600851475143)
# get_factors(13195)
