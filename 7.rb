require "pp"
azar = []

20.times do |x|
	azar.push(rand(20))
end

promedio = azar.inject { |sum, x| sum += x } / azar.size.to_f

pp azar

pp promedio
