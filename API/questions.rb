name = ARGV.first
prompt = '> '
puts "Hello #{name},how are you?"
rep = STDIN.gets.chomp
if rep==="Yes"
	puts "Look this guy, he said yes.."
else
	puts "Oooh boy, what do you need?"
	rep2 = STDIN.gets.chomp
end

puts "Type your filename:"
file = STDIN.gets.chomp

txt = open(file)
if file.read
	file.read
else
	puts "Arquivo inexistente"
end
