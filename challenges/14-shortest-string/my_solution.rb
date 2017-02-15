# Shortest String

#Tu solucion abajo:

<<<<<<< HEAD
def shortest_string(arr)
  return nil if arr.empty?
  arr.sort_by! {|x| x.length}
  arr[0]
=======
def shortest_string(array)
  return nil if array.empty?
  array.sort_by! {|x| x.length}
  array.first
end

def shortest_string(array)
  array.min({|a,b| a.length <=> b.length})
>>>>>>> upstream/master
end
