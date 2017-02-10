# Triangle Side

# Tu solucion abajo:

def valid_triangle? (x, y, z)
  if x <= 0 && y <= 0 && z <= 0
    false
  elsif (x + y) <= z || (x + z) <= y || (y + z) <= x
    false
  else
    true
  end
end
