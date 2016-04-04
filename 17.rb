mapping = {
	Atacama: ["Copiapó", "Chañaral", "Huasco"],
	Aisen: ["Coihaique", "Capitán Prat"],
	BioBio: ["Concepción", "Arauco"]
}

puts "Seleccione una opción: \n a) Agregar Ciudad/Región \n b) Quitar Ciudad/Región \n \n"

print "Digite la opción seleccionada:"

choice = gets.chomp

if !choice.empty?
	if choice === "a"
		puts "Seleccione: \n a) Agregar Ciudad \n b) Agregar Región"
		print "Digite la opción seleccionada:"
		choice2 = gets.chomp

		if !choice2.empty?
			if choice2 === "a"
				puts "Regiones actualmente en el listado: "
				i = 1
				mapping.each do |k, v|
					puts "#{i}) #{k} "
					i += 1
				end
				print "Escriba la región a la cual desea incorporarle una ciudad: "
				region = gets.chomp.to_sym
				if mapping[region].nil?
					puts "La región ingresada no existe"
				else
					print "Escriba la ciudad que desea incorporar: "
					ciudad = gets.chomp
					mapping[region].push(ciudad)
					puts "Se han actualizado las ciudades, a continuación el listado: "
					p mapping[region]
				end
				#puts choice4

			elsif choice2 === "b"
				print "Escriba la región que desea agregar: "
				region = gets.chomp.to_sym
				if !region.empty?
					mapping[region] = []
				end
				puts "Se han actualizado las regiones: \n #{mapping}"
			else
				puts "Ingresó una selección incorrecta... ejecute el programa nuevamente \n"
			end
		else
			puts "No ingreso nada... ejecute el programa nuevamente"
		end

	elsif choice === "b"
		puts "Seleccione \n a) Quitar Ciudad \n b) Quitar Región"
		print "Digite la opción seleccionada:"
		choice3 = gets.chomp

		if !choice3.empty?
			if choice3 === "a"
				puts "Regiones actualmente en el listado: "
				i = 1
				mapping.each do |k, v|
					puts "#{i}) #{k} "
					i += 1
				end
				print "Escriba alguna de las regiones de listado a la cual desea eliminar una ciudad: "
				region = gets.chomp.to_sym
				if mapping[region].nil?
					puts "La región ingresada no existe"
				else
					print "Escriba la ciudad que desea eliminar del listado que se muestra entre corchetes "
					print "#{mapping[region]}: "
					ciudad = gets.chomp
					del_result = mapping[region].delete(ciudad)
					if del_result.nil?
						puts "La ciudad escrita no existe, no se borró nada"
					else 
						puts "Se han actualizado las ciudades, a continuación el listado: "
						p mapping[region]
					end
				end
			elsif choice3 === "b"
				print "Digite la región a borrar: "
				region_borrar = gets.chomp.to_sym
				del_result = mapping.delete(region_borrar)
				if !del_result.nil?
					puts "Se borró la región #{region_borrar} y actualizó el listado de regiones ingresadas al sistema"
					puts mapping
				else
					puts "El dato ingresado no existe, no se borró nada"
				end
				
			else
				puts "Ingresó una selección incorrecta... ejecute el programa nuevamente \n"
			end
		else
			puts "No ingreso nada... ejecute el programa nuevamente"
		end

	else
		puts "Ingresó una selección incorrecta... ejecute el programa nuevamente \n"
	end  
else
	puts "No ingreso nada... ejecute el programa nuevamente"
end