# Pretty Triangle


# Tu solucion abajo:

def print_triangle(num)
  return nil if num <= 0
  (1..num).each { |n| print "*" * n + "\n" }
end

print_triangle(8)
