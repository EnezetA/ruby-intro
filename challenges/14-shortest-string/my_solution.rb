# Shortest String

#Tu solucion abajo:

def shortest_string(arr)
  return nil if arr.empty?
  arr.sort_by! {|x| x.length}
  arr[0]
end
