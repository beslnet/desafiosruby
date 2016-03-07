flota = [[2,3],[3,4],[3,3]]
# ==> [[2, 3], [3, 4], [3, 3]]

pares_usuario = [[3,5], [3,3], [3,4]]
# ==> [[3, 5], [3, 3], [3, 4]]

flota.each_with_index do |x, z|
	pares_usuario.each do |y|
		if (x == y)
			puts "Acertaste con el par número #{z+1}"
		end
	end
end
# =Acertaste con el par número 2
# =Acertaste con el par número 3
# ==> [[2, 3], [3, 4], [3, 3]]
flota_azar = []
# ==> []
a = (0..5).to_a.sample(2)
# ==> [3, 5]
b = (0..5).to_a.sample(2)
# ==> [4, 0]
c = (0..5).to_a.sample(2)
# ==> [4, 2]
flota_azar.push(a, b, c)
# ==> [[3, 5], [4, 0], [4, 2]]

flota_azar.each_with_index do |x, z|
	pares_usuario.each do |y|
		if (x == y)
			puts "Acertaste con el par número #{z+1}"
		end
	end
end

# =[[3, 5], [4, 0], [4, 2]]
# ==> [[3, 5], [4, 0], [4, 2]]
