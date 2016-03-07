require "pp"
# ==> true
cadena = "1,2,7,1,3,5,3.4,9,1".split(",").map(&:to_i)
# ==> [1, 2, 7, 1, 3, 5, 3, 9, 1]

promedio = cadena.inject { |sum, x| sum += x } / cadena.size.to_f
# ==> 3.5555555555555554

hash_masrepetido = cadena.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
# ==> {1=>3, 2=>1, 7=>1, 3=>2, 5=>1, 9=>1}


puts promedio
# =3.5555555555555554
# ==> nil


moda = cadena.max_by { |x| hash_masrepetido[x] }
# ==> 1

puts moda
# =1
# ==> nil
