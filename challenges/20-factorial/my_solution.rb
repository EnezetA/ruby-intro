# Factorial


# Tu solucion abajo:
<<<<<<< HEAD
def factorial (num)
  if num == 0
    num = 1
  else
    num *= factorial(num - 1)
  end
end
factorial(5)
=======
def factorial(number)
  result = 1
  while number>=1
    result = result*number
    number = number-1
  end
  return result
end


def factorial(number)
  if number <= 1
    1
  else
    (1..number).inject(:*)
  end
end



def factorial(n)
  if n == 0
     n = 1
  else
    n * factorial(n-1)
  end
end
>>>>>>> upstream/master
