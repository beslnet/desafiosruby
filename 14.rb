flota = [[2,3],[3,4],[3,3]]

pares_usuario = [[3,5], [3,3], [3,4]]

flota.each_with_index do |x, z|
	pares_usuario.each do |y|
		if (x == y)
			puts "Pregunta 1: Acertaste con el par número #{z+1}"
		end
	end
end
flota_azar = []
a = (0..5).to_a.sample(2)
b = (0..5).to_a.sample(2)
c = (0..5).to_a.sample(2)
flota_azar.push(a, b, c)

flota_azar.each_with_index do |x, z|
	pares_usuario.each do |y|
		if (x == y)
			puts "Pregunta 2: Acertaste con el par número #{z+1}"
		end
	end
end

