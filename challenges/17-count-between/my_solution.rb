# Count Between

# Tu solucion abajo:

def count_between (arr, lower, upper)
arr.count { |x| (x >= lower) && (x <= upper)}
end
