a = [1,2,3]
# ==> [1, 2, 3]
b = [:azul, :rojo, :amarillo]
# ==> [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
# ==> ["Tacos", "Quesadillas", "Hamburguesas"]

abc = [a, b, c]
# ==> [[1, 2, 3], [:azul, :rojo, :amarillo], ["Tacos", "Quesadillas", "Hamburguesas"]]
nuevo_arreglo = abc.flatten
# ==> [1, 2, 3, :azul, :rojo, :amarillo, "Tacos", "Quesadillas", "Hamburguesas"]

arreglo_string = nuevo_arreglo.map { |i| i.to_s}

p arreglo_string