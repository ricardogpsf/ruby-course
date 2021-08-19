=begin 
    Tudo em Ruby é um objeto, não existem tipos primitivos, para tudo o que precisamos temos uma classe associada.
    Temos 6 principais de tipos de dados para estudar agora:
        - Integer
        - Float
        - Boolean
        - String
        - Symbol
        - Array
        - Hash

    Obs.: você acabou de conhecer outra maneita de criar comentários de código, dessa vez para comentário de múltiplas linhas.
=end

# Integer
puts "Integer"

numA = 100
numB = 200

puts numA, numB
puts "numA + numB = "
puts numA + numB

puts "-------------"

# Float
puts "Float"

numA = 2.1
numB = 5.2

puts numA, numB
puts "numA + numB = "
puts numA + numB

puts "-------------"

# Boolean
puts "Boolean"

isTrue = true
isFalse = false

puts isTrue, isFalse

puts "-------------"

# String
puts "String"

name = "Algum texto aqui"
puts name

puts "-------------"

# Symbol: é semelhante a uma string, porém é um objeto único na memória sempre que utilizamos o mesmo Symbol
puts "Symbol"

sym1 = :pending
sym2 = :pending
puts sym1, sym2

# Observe que o object_id dos dois Symbols tem o mesmo valor, pois são o mesmo objeto na memória (as variáveis apontam para o mesmo objeto):
puts sym1.object_id
puts sym2.object_id

# O mesmo não acontece com strings. Cada nova string é um novo objeto na memória, mesmo que tenham o mesmo valor:
str1 = "pending"
str2 = "pending"
puts str1.object_id
puts str2.object_id

puts "-------------"

# Array
puts "Array"

novo_array = [] # ou poderia ser: novo_array = Array.new
novo_array_com_elems = [1, 2, 3]
elems_variados = [1, 2, 3, "string", :algum_symbol]

puts novo_array.inspect, novo_array_com_elems.inspect, elems_variados.inspect

puts "-------------"

# Hash
puts "Hash"

novo_hash = {} # ou poderia ser: novo_hash = Hash.hew
novo_hash_com_elems = { "dez" => 10, "vinte" => 20, "trinta" => 30 }
novo_hash_com_symbols_sendo_a_chave = { dez: 10, vinte: 20, trinta: 30 }

puts novo_hash, novo_hash_com_elems, novo_hash_com_symbols_sendo_a_chave

puts "-------------"
