restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# ==> {"Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2}


# 1) Plato más caro
plato_caro = restaurant_menu.max_by(&:last)
# ==> ["Dal Makhani", 4]
plato_barato = restaurant_menu.min_by(&:last)
# ==> ["Coffee", 2]

# 2) Obtener el plato más barato
# 4) Crear un arreglo con solo los nombres de los platos
# 5) Crear un arreglo con solo los valores de los platos
suma_menu = 0
# ==> 0
cantidad_menu = restaurant_menu.length
# ==> 3
arreglo_platos = []
# ==> []
arreglo_precios = []
# ==> []
restaurant_menu.each do |x,y| 
	suma_menu = suma_menu + y
	arreglo_platos.push(x)
	arreglo_precios.push(y)
end
# ==> {"Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2}

arreglo_precios
# ==> [3, 4, 2]
arreglo_platos
# ==> ["Ramen", "Dal Makhani", "Coffee"]


# 3) Promedio precios menú
promedio_preciosmenu = suma_menu / cantidad_menu
# ==> 3

# 6) Modificar el hash y agregar el iva a los valores de los platos

menu_iva = restaurant_menu.map { |key, value| [key, "#{value * 1.19}"]}.to_h
# ==> {"Ramen"=>"3.57", "Dal Makhani"=>"4.76", "Coffee"=>"2.38"}

restaurant_menu
# ==> {"Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2}
menu_iva
# ==> {"Ramen"=>"3.57", "Dal Makhani"=>"4.76", "Coffee"=>"2.38"}

# 7) Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra.

restaurant_menu.each do |x, y|
	variable = "#{x}".split.count
	if variable === 2 
		  restaurant_menu["#{x}"] = "#{y * 0.8}"
	end
end
# ==> {"Ramen"=>3, "Dal Makhani"=>"3.2", "Coffee"=>2}

restaurant_menu #con descuento al plato que posee dos palabras
# ==> {"Ramen"=>3, "Dal Makhani"=>"3.2", "Coffee"=>2}


