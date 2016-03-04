require "pp"
# ==> true
azar = []
# ==> []

20.times do |x|
	azar.push(rand(20))
end
# ==> 20

mayores = azar.select { |x| x > 10 }
# ==> [11, 15, 16, 18, 19, 11]

pp azar
# =[11, 15, 0, 5, 16, 4, 10, 9, 18, 0, 2, 6, 5, 9, 19, 1, 11, 5, 10, 8]
# ==> [11, 15, 0, 5, 16, 4, 10, 9, 18, 0, 2, 6, 5, 9, 19, 1, 11, 5, 10, 8]

pp mayores
# =[11, 15, 16, 18, 19, 11]
# ==> [11, 15, 16, 18, 19, 11]


#hash.select {|k, v| v == "benja"}
#hash.find {|k, v| v == "benja"}
