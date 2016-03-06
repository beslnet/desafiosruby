uno = [1,2,3,0,1,2,2,1,2,1,2,0,3]
# ==> [1, 2, 3, 0, 1, 2, 2, 1, 2, 1, 2, 0, 3]
dos = [:azul, :verde, :amarillo]
# ==> [:azul, :verde, :amarillo]

nuevo_arreglo = []
# ==> []

uno.each do |elem|
	if(elem === 0)
		dos.each_with_index do |elem2, index2|
			if(index2 === elem)
				nuevo_arreglo.push(elem2)
			end
		end
	elsif (elem === 1 )
		dos.each_with_index do |elem2, index2|
			if(index2 === elem)
				nuevo_arreglo.push(elem2)
			end
		end
	elsif (elem === 2)
		dos.each_with_index do |elem2, index2|
			if(index2 === elem)
				nuevo_arreglo.push(elem2)
			end
		end
	else
		nuevo_arreglo.push(nil)
	end

end
# =verde
# =amarillo
# =nil
# =azul
# =verde
# =amarillo
# =amarillo
# =verde
# =amarillo
# =verde
# =amarillo
# =azul
# =nil
# ==> [1, 2, 3, 0, 1, 2, 2, 1, 2, 1, 2, 0, 3]

p nuevo_arreglo
# =[:verde, :amarillo, nil, :azul, :verde, :amarillo, :amarillo, :verde, :amarillo, :verde, :amarillo, :azul, nil]
# ==> [:verde, :amarillo, nil, :azul, :verde, :amarillo, :amarillo, :verde, :amarillo, :verde, :amarillo, :azul, nil]


