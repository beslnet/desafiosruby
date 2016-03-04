a = [1,2,3]
# ==> [1, 2, 3]
b = [:azul, :rojo, :amarillo]
# ==> [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
# ==> ["Tacos", "Quesadillas", "Hamburguesas"]


nuevo_arreglo = []
# ==> []

a.zip(b,c).each do |a, b, c|
	nuevo_arreglo.push("#{a}")
	nuevo_arreglo.push("#{b}")
	nuevo_arreglo.push("#{c}")
	#puts "#{a} #{b} #{c}"
end
# ==> [[1, :azul, "Tacos"], [2, :rojo, "Quesadillas"], [3, :amarillo, "Hamburguesas"]]

nuevo_arreglo
# ==> ["1", "azul", "Tacos", "2", "rojo", "Quesadillas", "3", "amarillo", "Hamburguesas"]

# investigar flatten