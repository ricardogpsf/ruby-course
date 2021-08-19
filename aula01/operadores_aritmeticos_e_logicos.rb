=begin 
    Os principais operadores aritméticos são:
        + (Adição)
        - (Subtração)
        * (Multiplicação)
        / (Divisão)
        % (Módulo)
        ** (Potência)
        += (Equivale a: variavel = variavel + outro_valor)
        -= (Equivale a: variavel = variavel - outro_valor)
        *= (Equivale a: variavel = variavel * outro_valor)
        %= (Equivale a: variavel = variavel % outro_valor)
        **= (Equivale a: variavel = variavel ** outro_valor)
=end

# Exemplos
puts "Operadores aritméticos"

numA = 100
numB = 2

puts numA + numB
puts numA - numB
puts numA * numB
puts numA / numB
puts numA % numB
puts numA ** numB

puts "-------"

numA += 10
puts numA

numA -= 10
puts numA

numA *= 10
puts numA

numA **= 10
puts numA

numA %= 10
puts numA

puts "---------"
puts "Operadores lógicos"
# Em Ruby podemos operar logicamente com qualquer valor.
# E qualquer valor que não seja nil ou false, é true!

# Os operadores são:
# && (é o AND)
# || (é o OR)
# ! (é a negação)

a = nil # equivale a false em operação lógica
b = false # equivale a false em operação lógica

puts true && a # false, mas o retorno da operação será nil, pois o último elemento analisado antes de retornar foi o a (nil)
puts true && b # false
puts 10 || a # true, mas o retorno é 10, pois o último elemento analisado antes de retornar foi o 10, já que 10 equivale a true
puts "" || b # true
puts !a # true
puts !b # true

