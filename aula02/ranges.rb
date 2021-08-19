# Ranges:
# Os intervalos ocorrem em todos os lugares,
# janeiro a dezembro, 0 a 9, linhas 50 a 67 e assim por diante. 
# Ruby oferece suporte a intervalos e nos permite usar intervalos de várias maneiras
#

# Ranges as Sequences
puts (1..5)        #==> 1, 2, 3, 4, 5
puts (1...5)       #==> 1, 2, 3, 4
puts ('a'..'d')    #==> 'a', 'b', 'c', 'd'

range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a
puts "#{range1}"
puts "#{range2}"

digits = 0..9
puts digits.include?(5)

#
# Parar Verificar se um valor faz parte do intervalo podemos usar o operador ===
#
if ((1..10) === 5)
   puts "5 está em (1..10)"
end

if (('a'..'j') === 'c')
   puts "c  está em ('a'..'j')"
end

unless (('a'..'j') === 'z')
   puts "z não está em ('a'..'j')"
end

#
# Outras opções
#
5.upto(10) do |i|
   puts "Valor: #{i}"
end

puts '-----'

10.downto(5) do |i|
   puts "Valor: #{i}"
end
