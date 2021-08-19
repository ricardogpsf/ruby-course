
#
# While
#
i = 0
num = 5
while i < num  do
   puts i
   i +=1
end

#
# Until
#
puts '-------'
i = 0
num = 5
until i == num  do
   puts i
   i +=1;
end

#
# For
#
puts '-------'
for i in 0..5
   puts "Valor da variavel local é: #{i}"
end

puts '-------'

for i in 0..5
   if i > 2 then
      break
   end
   puts "Valor da variavel local é: #{i}"
end

puts '-------'

for i in 0..5
   if i < 2 then
      next
   end
   puts "Valor da variavel local é: #{i}"
end

puts '-------'

#
# Outros tipos de loops usando métodos dos objetos
#

(0..5).each do |val|
   puts "Valor: #{val}"
end

puts '-------'

values = [10, 20, 30, 40, 50]
values.each do |val|
   puts "Valor: #{val}"
end

values.each_with_index do |val, index|
   puts "Valor: #{index} => #{val}"
end

hash = {dez: 10, vinte: 20, trinta: 30}
hash.each do |key, value|
    puts "hash: #{key} => #{value}"
end
