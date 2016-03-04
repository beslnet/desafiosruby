a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

b = b.reverse


a.zip(b,c).each do |x|
	p x
end

