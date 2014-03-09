
@hash = {}

def factorial(num)
  return @hash[num] if @hash.has_key?(num)
  fac = num.downto(1).reduce(1, :*)
  @hash[num]=fac
  fac
end

def sum_factorial_digits?(num)
  sum = num.to_s.split('').inject(0){|sum,i| sum += factorial(i.to_i)}
  num == sum
end

s = []

[*3..1000000].each do |i|
  s.push(i) if sum_factorial_digits?(i)
end

puts s.inspect

puts (s.inject(0){|sum,i| sum += i}).to_s