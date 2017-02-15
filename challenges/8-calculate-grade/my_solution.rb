# Calculate a Grade

# Tu solucion abajo:

<<<<<<< HEAD
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
=======
def get_grade(a,b,c, *)
  average = (a + b + c) / 3
  if average < 60
    "F"
  elsif average >= 60 && < 70
    "D"
  elsif average >= 70 && average < 80
    "C"
  elsif average >= 80 && average < 90
    "B"
  else
    "A"
  end
end

def get_grade(note)
  if note >= 90
    "A"
  elsif note >= 80
    "B"
  elsif note >= 70
    "C"
  elsif note >= 60
    "D"
  elsif note < 60
>>>>>>> upstream/master
    "F"
  end
end
