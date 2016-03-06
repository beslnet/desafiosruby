arreglo = [1,2,3,[1,2,3],4,5,6,[1,2,3]]
# ==> [1, 2, 3, [1, 2, 3], 4, 5, 6, [1, 2, 3]]
nuevo_arreglo = []
arreglo.each do |x|
	suma = 0
	if(x.kind_of?(Array))
		x.each do |y| 
			suma = y + suma
		end
		nuevo_arreglo.push([suma, suma])
	else
		nuevo_arreglo.push(x)
		#x.push(x)
	end
puts x
end
# =aaa
# =1
# =aaa
# =2
# =aaa
# =3
# =1
# =2
# =3
# =6
# =6
# =aaa
# =4
# =aaa
# =5
# =aaa
# =6
# =1
# =2
# =3
# =6
# =6
# ==> [nil, nil, nil, nil, nil, nil, nil, nil]

nuevo_arreglo
# ==> [nil, nil, nil, nil, nil, nil, nil, nil]

