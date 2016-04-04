require "pp"
cadena = "1,2,7,1,3,5,3.4,9,1".split(",").map(&:to_i)

promedio = cadena.inject { |sum, x| sum += x } / cadena.size.to_f

hash_masrepetido = cadena.inject(Hash.new(0)) { |h,v| h[v] += 1; h }


puts promedio


moda = cadena.max_by { |x| hash_masrepetido[x] }

puts moda
