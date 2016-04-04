alumnos = [
			{name:"Juan Cristobal", edad:31}, 
			{name: "David Wazoski", edad:27}, 
			{name: "Carlos Salas", edad:25}, 
			{name: "Gonzalo Alarcón", edad:31}, 
			{name: "Daniela Mora", edad:26},
			{name: "Sebastián Meza", edad:24},
			{name: "Cristobal Dominguez", edad:35},   
			{name: "Manuel Saez", edad:32}, 
			{name: "Alejandra Quintana", edad:28},
			{name: "Nathalie Ravilet", edad:28},  
			{name: "Rodrigo Hein", edad:28}, 
			{name: "Joaquín Sepulveda", edad:24}, 
			{name: "Benjamín Silva", edad:35}, 
			{name: "Belén Guede", edad:18}, 
			{name: "Diego Guajardo", edad:32}, 


# 1) Calcular la edad promedio del curso
		  ]
suma_edades = 0
cantidad_alumnos = alumnos.length

alumnos.each do |x|
	suma_edades = x[:edad] + suma_edades
end

promedio_edad = suma_edades / cantidad_alumnos.to_f

puts "Edad Promedio: #{promedio_edad}"

# 2) Encontrar al alumnos más joven del curso

edades = Hash.new
alumnos.each do |x|
	edades[x[:name]] = x[:edad]
end




edad_menor = edades.group_by(&:last).min_by(&:first).last.to_h

puts "la edad del alumno más joven del curso es: #{edad_menor}"
