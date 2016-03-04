uno = [1,2,3,0,1,2,2,1,2,1,2,0,3]
dos = [:azul, :verde, :amarillo]

nuevo_arreglo = []

uno.each_with_index do |elem, index|
	if(elem === 0)
		nuevo_arreglo.push(:azul)
	elsif (elem === 1 )
		nuevo_arreglo.push(:verde)
	elsif (elem === 2)
		nuevo_arreglo.push(:amarillo)
	else
		nuevo_arreglo.push(nil)
	end

end

p nuevo_arreglo


