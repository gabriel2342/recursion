

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

p factorial(1000)