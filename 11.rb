arreglo = [[1,"azul"], [2,"verde"], [3, :rojo]]

nuevo_arreglo = []
	arreglo.each_with_index do |elem, index|
		elem[0].times do |i|
			nuevo_arreglo.push(elem[1])
		end
	end	


arreglo
nuevo_arreglo

