dias_semana = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

feriados = ["Lunes 19", "Martes 20", "Miercoles 31"]

dias_habiles = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes"]

dias_mes = []

dias_clases_habiles = []

i = 3

while i < 32
	dias_semana.each do |x|
		if(i < 32)
			dias_mes.push("#{x} #{i}")
			puts "#{x} #{i}"		
			i +=1
		end
	end
end  

puts "Respuesta pregunta 1:"
p dias_mes

puts "Respuesta pregunta 2:"

feriados = ["Lunes 3", "Martes 11", "Miercoles 19", "Jueves 20", "Sábado 22"]
p feriados

puts "Respuesta pregunta 3:"

dias_clases = dias_mes - feriados

p dias_clases

puts "Respuesta pregunta 4:"

dias_clases.each do |x|
	findes_cut = x.split
	valor_final = findes_cut & dias_habiles

	if valor_final.any?
		dias_clases_habiles.push(x)
	end
end
p dias_clases_habiles