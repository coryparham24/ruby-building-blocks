def caesar_cipher(string, key)
	string = string.split("")
	string.map! do |x|
		ascii = x.ord
		if ascii >= 65 and ascii <= 90
			ascii += key
			if ascii > 90
				ascii -= 26
			end
		end
		if ascii >= 97 and ascii <= 122
			ascii += key
			if ascii > 122
				ascii -= 26
			end
		end	
		x = ascii.chr
	end
	puts string
end

print 'What would you like to encode? '
string = gets.chomp
print 'What key would you like to use (between 0 and 25)? '
key = gets.chomp.to_i
while key < 0 or key > 25
	print 'Please enter a valid key. '
	key = gets.chomp.to_i
end

caesar_cipher(string, key)