

def factorial(num)
  num.downto(1).reduce(1, :*)  
end


puts factorial(100).to_s.split('').inject(0){|sum,i| sum + i.to_i}