
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
zombie_apocalypse_supplies.sort_by {|word| word.downcase}

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
  puts "#{key} - #{value}*"
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
other_animals = %w["Andean Cat" "Dodo" "Tasmanian Tiger" "Saiga Antelope"]
other_animals.each do |animal|
  if extinct_animals[animal]
    puts "Si existe"
  else
    puts "No existe"
  end
end


# 5. Acabamos de encontrar que el Passenger Pigeon, realmente no esta extincto!
# Remuevelo del hash extinct_animals y devuelve su pareja de key/value como un arreglo de dos elementos. Puedes encontrar un metodo en la documentacion de la  clase Hash que te puede ayudar con esto.
# ----
aint_extinct = extinct_animals.select{|k, v| k == "Passenger Pigeon"}
aint_extinct.first

#Practica, Estructuras nesteadas

# Imprime en la consola solo el elemento target ningun otro

# Target: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]], ]

# Intentos:
# ============================================================
#puts array[1][1][2][0]
array.each do |item|
  if !item.kind_of?(Array)
    puts item if item == "FORE"
  else
    item.each do |iitem|
      if !iitem.kind_of?(Array)
        puts iitem if iitem == "FORE"
      else
        iitem.each do |iiitem|
          if !iiitem.kind_of?(Array)
            puts iiitem if iiitem == "FORE"
          else
            iiitem.each do |iiiitem|
              if !iiiitem.kind_of?(Array)
                puts iiiitem if iiiitem == "FORE"
              else
                "The Word does not exist!!"
              end
            end
          end
        end
      end
    end
  end
end



# ============================================================

# Target: "congrats!"

 hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# Intentos:
# ============================================================

# puts hash[:outer][:inner]["almost"][3]

hash.each do |key, val|
  if !val.kind_of?(Hash)
    puts val if val == "congrats!"
  else
    val.each do |keyy, vall|
      if !vall.kind_of?(Hash)
        puts vall if vall == "congrats!"
      else
        vall.each do |keyyy, valll|
          if !valll.kind_of?(Hash)
            puts valll if valll == "congrats!"
          else
            valll.each do |keyyyy, vallll|
              if !vallll.kind_of?(Hash)
                puts vallll if vallll == "congrats!"
              else
               "no existe"
              end
            end
          end
        end
      end
    end
  end
end

# ============================================================

# Target: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# Intentos:
# ============================================================

nested_data.each do |key, val|
  puts val if val == "finished"
  if val.kind_of?(Hash)
    val.each do |k, v|
      puts v if v == "finished"
    end

  else

  end
end

# ============================================================

#Usando un metodo del modulo Enumerable, modifica el array number_array de forma que cada numero se le sume 5. Lo vas a hacer de forma destructiva o no ?

number_array = [5, [10, 15], [20,25,30], 35]



<<<<<<< HEAD
# Crea un metodo que recina un array como argumento, en este caso el array startup_names, y devuelva un array igual pero en donde a cada nombre se le a añadido 'ly' al final.

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def new_ary arr
  new_ary = arr.each do |v|
    if v.kind_of?(String)

  end
end
=======


# Crea un metodo que reciva un array como argumento, en este caso el array startup_names, y devuelva un array igual pero en donde a cada nombre se le a añadido 'ly' al final.

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map.with_index do |string, index|
  if string.is_a?(Array)
    string.map.with_index do |sub_string, sub_index|

      if sub_string.is_a?(Array)
        sub_string.map.with_index do |sub_sub_string, sub_sub_index|
          startup_names[index][sub_index][sub_sub_index] += "ly"
        end
      else
        startup_names[index][sub_index] += "ly"
      end

    end
  else
    startup_names[index] += "ly"
  end
end



>>>>>>> upstream/master
