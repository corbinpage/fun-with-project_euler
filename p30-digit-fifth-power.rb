

def is_5th_power_digit_sum?(num)
  s = num.to_s.split('').inject(0){|sum,i| sum += i.to_i**5}
  num == s
end

s = []

[*2..1000000].each do |i|
  s.push(i) if is_5th_power_digit_sum?(i)
end

puts s.inspect

puts (s.inject(0){|sum,i| sum += i}).to_s