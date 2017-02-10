# Calculate a Grade

# Tu solucion abajo:

def get_grade (x)
  if x.to_i >= 90
    "A"
  elsif x.to_i >= 80
    "B"
  elsif x.to_i >= 70
    "C"
  elsif x.to_i >= 60
    "D"
  elsif x.to_i < 60
    "F"
  end
end
