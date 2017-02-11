# Longest String

# Tu solucion abajo:

def longest_string(arr)
  return nil if arr.empty?
  arr.sort!{|x, y| y.length <=> x.length}
  arr[0]
end
