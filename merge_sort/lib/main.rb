def merge(left_array, right_array)
  result = []
   until left_array.empty? && right_array.empty?
      if  left_array[0] <= right_array[0]
        result << left_array[0] 
        left_array.delete_at(0)
      else  
        result << right_array[0] 
        right_array.delete_at(0)
      end

      if right_array.empty?
        result.concat(left_array)
        left_array.clear
      elsif left_array.empty?
        result.concat(right_array)
        right_array.clear
      end
    end
  result
end

def merge_sort(array)
  return array if array.size < 2
  left = array.take(array.size/2)
  right = array.drop(array.size/2)
  array = merge(merge_sort(left), merge_sort(right))
end
  
p merge_sort([5,57,7,6,8,9,2,4,5,3,-23,33,-1,56,9,-10,100])