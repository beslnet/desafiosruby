require "pp"
azar = []

20.times do |x|
	azar.push(rand(20))
end

mayores = azar.select { |x| x > 10 }

pp azar

pp mayores

