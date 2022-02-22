def fibs(n)
  a = 0
  b = 1 
  result = [0]
  n.times do 
    a, b = b, a + b
    result << a
  end
  result
end

p fibs(15)

def fibs_rec(n, result = [0,1])
  return result if n < 2 
  result = fibs_rec(n-1)
  result << result[-1] + result[-2]
end

p fibs_rec(15)

