def fibs(num)
  arr = []
  for i in 0..num-1 do
    if i == 0
      arr<<i
    elsif i==1
      arr<<i
    else
      arr << arr[i-1]+arr[i-2]
    end
  end  
  puts arr
end

#fibs(8)

def fibs_rec(num)
  if num <= 2
    return [0,1]
  end
  arr = fibs_rec(num-1)
  arr << arr[-1]+ arr[-2]
  return arr
end  

puts fibs_rec(8)