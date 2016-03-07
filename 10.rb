arreglo = [1,2,3,[1,2,3],4,5,6,[1,2,3]]
nuevo_arreglo = []
arreglo.each do |x|
	suma = 0
	if(x.kind_of?(Array))
		x.each do |y| 
			suma = y + suma
		end
		nuevo_arreglo.push([suma, suma])
	else
		nuevo_arreglo.push(x)
	end
end

nuevo_arreglo

