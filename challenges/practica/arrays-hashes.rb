
# Practica de Arrays


zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "Tactical 10mm"]


result == ["binoculars", "CB radio", "compass", "hatchet", "rations", "shotgun", "water jug", "Tactical 10mm"]

# 1. Itera sobre el array zombie_apocalypse_supplies, imprimiendo cada elemento dentro del array.
# ----
zombie_apocalypse_supplies.each do |x|
  puts x
end

# 2. Para mantenernos organizados, organiza el array zombie_apocalypse_supplies de forma alfabetica.
# ----
zombie_apocalypse_supplies.sort!



# 3. Crea un metodo que mire si un item (string) esta dentro del arreglo zombie_apocalypse_supplies. Por ejemplo esta `boots` dentro de la lista de suministros?.
# ----
def include_str(str, arr)
  arr.include?(str)
end

# 4. No puedes cargar muchas cosas, solo hay espacio para 5. Remueve todos los items del arreglo zombie_apocalypse_supplies que tengas mas de dos palabras, solo pueden quedar los 5 items compuestos de una sola palabra.
# ----
zombie_apocalypse_supplies.delete_if {|supply| supply.include?(" ")}


# 5. Encontraste otro sobreviviente! esto significa que pueden combinar sus suministros. Crea un nuevo arreglo de suministros combinados en base a tus zombie_apocalypse_supplies, y los sumnitros del otro sobreviviente. Debes deshacerte de todos los suministros que esten duplicados. No olvides revisar la documentacion de Array.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove","solar battery", "flashlight"]
# ----
suministros_combinados = zombie_apocalypse_supplies | other_survivor_supplies


# Practica de Hash

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Itera sobre el hash extinct_animals, imprimiendo cada vez el la pareja de key/value con un dash (-) entre ellos y un asterisco (*) entre cada elemento (animal extincto).
# ----
extinct_animals.each do |key, value|
  puts "#{key} - #{value}"
end

# 2. Elimina todos los animales que se extinguieron despues del año 1999, del hash extinct_animals. No uses metodos especiales solo `delete` e iteraciones.
# ----
extinct_animals.delete_if {|key, value| value > 1999}

# 3. Nuestros calculos estaban muy mal, resulta que todos esos animales se extinguieron 3 años antes que la fecha dada. Actualiza los valores dentro de extinct_animals para que reflejen el valor real de la fecha de extincion.
# ----
extinct_animals.each do |key, value|
  extinct_animals[key] = value - 3
end

# 4. Oiste que los siguientes animales podian estar extinctos, pero no estas seguro. Uno por uno revisa si se encuentran incluidos dentro del hash extinct_animals:
# "Andean Cat"
# "Dodo"
# "Tasmanian Tiger"
# "Saiga Antelope"
# ----
extinct_animals.has_value?("Andean Cat")
extinct_animals.has_value?("Dodo")
extinct_animals.has_value?("Andean Tasmanian Tiger")
extinct_animals.has_value?("Saiga Antelope")

# 5. Acabamos de encontrar que el Passenger Pigeon, realmente no esta extincto!
# Remuevelo del hash extinct_animals y devuelve su pareja de key/value como un arreglo de dos elementos. Puedes encontrar un metodo en la documentacion de la  clase Hash que te puede ayudar con esto.
# ----
aint_extinct = extinct_animals.select{|k, v| k == "Passenger Pigeon"}
aint_extinct.to_a
