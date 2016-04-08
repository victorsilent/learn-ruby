def caesar_cipher(string, key)
	new_string = []
	string.each_byte do |x|
		if x == 32 || (33..64 === x)
			new_string << x
		end
		case x+key
		when 65..90
			new_string << x+key
		when 91..96
			new_string << (x+key)-26
		when 97..122
			new_string << x+key
		when 122..300
			new_string << (x+key)-26
			
		end
	end

	frase = new_string.map(&:chr)

	puts "#{frase.join("")}"

end

caesar_cipher("What a string!", 5)

caesar_cipher("Cesar da o cu",5)

caesar_cipher("Hjxfw if t hz",-5)


