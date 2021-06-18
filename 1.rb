a = gets.split.join('')
b = gets.split.join('')
r = 0
b.split('').each do |i|
	if i in a
		r += 1	
	end
end

puts r == b.size
