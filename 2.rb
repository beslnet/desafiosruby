a = [1,2,3]
# ==> [1, 2, 3]
b = [:azul, :rojo, :amarillo]
# ==> [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
# ==> ["Tacos", "Quesadillas", "Hamburguesas"]

b = b.reverse
# ==> [:amarillo, :rojo, :azul]


a.zip(b,c).each do |a, b,c|
	puts "#{a} #{b} #{c}" 
end
# =1 amarillo Tacos
# =2 rojo Quesadillas
# =3 azul Hamburguesas
# ==> [[1, :amarillo, "Tacos"], [2, :rojo, "Quesadillas"], [3, :azul, "Hamburguesas"]]

