

def is_palindrome?(num)
  i = 0
  str = num.to_s
  while (i < str.length/2)
    # puts str[i].to_s
    return false if !str[i].match(str[str.length-i-1])
    i += 1
  end
  return true
end

999.downto(900).to_a.each do |i|
  999.downto(900).to_a.each do |j|
    # puts i.to_s + " " + j.to_s
    puts (i*j).to_s if is_palindrome?(i*j)
  end
end



# puts is_palindrome?(9339)
