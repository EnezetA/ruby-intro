# Factorial


# Tu solucion abajo:
def factorial (num)
  if num == 0
    num = 1
  else
    num *= factorial(num - 1)
  end
end
factorial(5)
