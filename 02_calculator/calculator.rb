#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.reduce(0, :+)
end

def multiply(*numbers)
  numbers.reduce(:*)
end

def power(a, b)
  Array.new(b, a).reduce(1, :*)
end

def factorial(number)
  [0, 1].include?(number) ? 1 : number * factorial(number - 1)
end
