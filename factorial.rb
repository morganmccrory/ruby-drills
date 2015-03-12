# Implement an iterative version of the factorial function
def factorial_iterative(n)
  array = [n]
  (n-1).times do
    array << (n-=1)
  end
  array.reduce(n) do |memo, obj|
    obj *= memo
  end
end

# Implement a recursive version of the factorial function
def factorial_recursive(n)
  sum = 1
  if n > 0
    n.times do
      sum *= n
      factorial_recursive(n-=1)
    end
  end
  sum
end