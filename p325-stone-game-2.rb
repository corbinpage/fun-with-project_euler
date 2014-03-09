@config = {}

def what_config?(arr,orig,i)
  small = arr[0]
  large = arr[1]

  if(small == 1 || 2*small == large || large % small == 0 || small == 1)
    i % 2 == 1 ? @config[orig] = "winning" : @config[orig] = "losing"
    return true
  elsif(2*small < large)
    @config[orig] = "either"
    return true
  elsif(small+1 == large)
    i % 2 == 1 ? @config[orig] = "losing" : @config[orig] = "winning"
    return true
  end
  return false
end

def settle(arr)
  i=1
  b = false
  copy = arr
  until b
    b = what_config?(copy,arr,i)
    puts copy.inspect + "   " + b.to_s + "   " + i.to_s + "   " + @config[arr].inspect
    copy = [copy[0],copy[1]-copy[0]].sort
    i += 1
  end
end

def run(num)
  large = num
  [*2..large].each do |l|
    high = l-1
    [*1..high].each do |s|
      # puts "[#{s},#{l}]"
      settle([s,l])
    end
  end
end

run(10000)
puts @config.inspect
puts @config.size.to_s

t = 0
@config.each do |key, value|
  puts key.inspect + "  " + @config[key] + "  " + t.to_s
  if value == "losing"
    t = t + key[0] + key[1]
  end
end

puts t

# settle([3,7])

