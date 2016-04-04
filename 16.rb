restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }


# 1) Plato más caro
puts "Plato más caro:"
p plato_caro = restaurant_menu.max_by(&:last)
	
# 2) Obtener el plato más barato
puts "Plato más barato:"
p plato_barato = restaurant_menu.min_by(&:last)

suma_menu = 0
cantidad_menu = restaurant_menu.length
arreglo_platos = []
arreglo_precios = []
restaurant_menu.each do |x,y| 
	suma_menu = suma_menu + y
	arreglo_platos.push(x)
	arreglo_precios.push(y)
end

# 5) Crear un arreglo con solo los valores de los platos
puts "Arreglo con sólo los valores de los platos:"
p arreglo_precios
# 4) Crear un arreglo con solo los nombres de los platos
puts "Arreglo de los platos:"
p arreglo_platos


# 3) Promedio precios menú
puts "Promedio precios menú:"
 p promedio_preciosmenu = suma_menu / cantidad_menu

# 6) Modificar el hash y agregar el iva a los valores de los platos

menu_iva = restaurant_menu.map { |key, value| [key, "#{value * 1.19}"]}.to_h
puts "Modifcar el hash y agregado el IVA al valor de los platos:"
p restaurant_menu
p menu_iva

# 7) Dar descuento del 20% para los platos que tengan un nombre de mas de una palabra.
puts "Descuento del 20% para los platos que tengan un nombre de más de 1 palabra"
restaurant_menu.each do |x, y|
	variable = "#{x}".split.count
	if variable === 2 
		  restaurant_menu["#{x}"] = "#{y * 0.8}"
	end
end

p restaurant_menu #con descuento al plato que posee dos palabras


