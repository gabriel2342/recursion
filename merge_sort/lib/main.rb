def merge(left_array, right_array)
  result = []
  while !left_array.empty? && !right_array.empty?
    if left_array[0] < right_array[0]
      result.push(left_array.shift)
    else
      result.push(right_array.shift)
    end
  end
  result
end

p merge([3,7,10,23], [1,9,15,75])
  

def merge_sort(array)
 return array if array.size < 2 
 left = merge_sort(array.slice(0...array.size/2))
 right = merge_sort(array.slice(array.size/2...array.size))
merge(left,right)
 
end

p merge_sort([5,7,6,8,9,2,4,5,3])