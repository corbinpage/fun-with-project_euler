
def check_fib(arr)
  next_num = arr[-1] + arr[-2]
  # puts next_num
  arr << next_num
  check_fib(arr) unless arr.last.to_s.length >= 1000
  arr
end


puts check_fib([1,1]).length

