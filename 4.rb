a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

abc = [a, b, c]
nuevo_arreglo = abc.flatten

arreglo_string = nuevo_arreglo.map { |i| i.to_s}

p arreglo_string
