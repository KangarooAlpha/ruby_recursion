def merge_sort(arr)
  if arr.length < 2
    return arr
  end
  half = (arr.length / 2).floor
  #debugger
  left = merge_sort(arr.slice(0,half))
  right = merge_sort(arr.slice(half, arr.length))
  sort = []
  until left.empty? || right.empty? do
    sort << (left.first < right.first ? left.shift : right.shift)
  end
  return sort + left + right

end  

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1])