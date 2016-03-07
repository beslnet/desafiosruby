a = [1,2,3]
# ==> [1, 2, 3]
b = [:azul, :rojo, :amarillo]
# ==> [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
# ==> ["Tacos", "Quesadillas", "Hamburguesas"]


a.zip(b,c).each do |x|
	p x
end
# =[1, :azul, "Tacos"]
# =[2, :rojo, "Quesadillas"]
# =[3, :amarillo, "Hamburguesas"]
# ==> [[1, :azul, "Tacos"], [2, :rojo, "Quesadillas"], [3, :amarillo, "Hamburguesas"]]

