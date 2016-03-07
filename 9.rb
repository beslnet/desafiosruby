arreglo = [1,2,1,3,2,1,4,7,1,2]
# ==> [1, 2, 1, 3, 2, 1, 4, 7, 1, 2]

nuevo_arreglo = []
# ==> []

arreglo.each_with_index do |elem, index|
	if(elem === index)
		puts "El elemento #{elem} está en la posición #{index}"
	end
end
# =El elemento 3 está en la posición 3
# =El elemento 7 está en la posición 7
# ==> [1, 2, 1, 3, 2, 1, 4, 7, 1, 2]
