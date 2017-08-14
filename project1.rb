def caesar_cipher(string, key)
	string = string.split("")
	string.map! do |x|
		ascii = x.ord
		if ascii >= 65 and ascii <= 90
			ascii += key.to_i
			if ascii > 90
				ascii -= 26
			end
		end
		if ascii >= 97 and ascii <= 122
			ascii += key.to_i
			if ascii > 122
				ascii -= 26
			end
		end	
		x = ascii.chr
	end
	puts string
end

def validate_key
	print 'What key would you like to use (between 0 and 25)? '
	key = gets.chomp
	if key =~ /^[0-9]+$/
		if key.to_i >= 0 and key.to_i <= 25
			@key = key
			return true
		else
			puts 'Please enter a valid key. '
			validate_key
		end
	else
		puts 'Please enter a valid key. '
		validate_key
	end
end

print 'What would you like to encode? '
string = gets.chomp
validate_key
caesar_cipher(string, @key)