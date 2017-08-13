def substrings(string, dictionary)
	hash = {}
	dictionary.each do |substring|
		hash[substring] = 0
		length = substring.length
		i = 0
		j = 0 + length - 1
		while j < string.length
			if substring == string[i..j]
				hash[substring] = hash[substring] + 1
			end
			i += 1
			j += 1
		end
	end
	hash.each do |key, value|
		if value == 0
			hash.delete(key)
		end
	end
	puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print 'Enter a string to see how many words in our dictionary appear in it. '
string = gets.downcase.chomp

substrings(string, dictionary)