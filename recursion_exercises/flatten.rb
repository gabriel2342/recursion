
def flatten(array, result = [])
  array.each do |element|
    if element.class == Array
      flatten(element, result)
    else
      result << element
    end
  end
  result
end

 p flatten([[1],[2],[3],[4],[5]])