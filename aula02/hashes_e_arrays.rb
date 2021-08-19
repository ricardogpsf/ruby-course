
puts "Hash"

# Criando um Hash
meu_hash = {}

# Criando um Hash com valores
meu_hash = {dez: 10, vinte: 20}
puts meu_hash

# Acessando um valor
puts meu_hash[:vinte]

# Adicionando um novo valor
meu_hash[:trinta] = 30
puts meu_hash

# Removendo um valor
meu_hash.delete(:trinta)
puts meu_hash

# Ruby não retorna erro caso você acesse um valor que não existe, apenas retorna nil.
# A versão string do nil é "", então não será possível ver o valor "nil" ao utilizar o puts (No IRB é possível).
puts meu_hash[:quarenta]

puts "-------"
puts "Array"

# Criando um array
meu_array = {}

# Criando um array com valores
meu_array = ["dez", "vinte"]
puts meu_array.inspect

# Acessando um valor
puts meu_array[0]
puts meu_array[1]

# Adicionando um novo valor
meu_array.push("trinta")
# ou
meu_array << "quarenta"
puts meu_array.inspect

# Adicionando em uma posição qualquer
meu_array.insert(2, "cinquenta")
puts meu_array.inspect

# Removendo um valor
meu_array.delete_at(2)
puts meu_array.inspect

# Ruby não retorna erro caso você acesse um valor que não existe, apenas retorna nil.
# A versão string do nil é "", então não será possível ver o valor "nil" ao utilizar o puts (No IRB é possível).
puts meu_array[100]

# Array de strings
meu_array = %w[um array com varias strings]
puts meu_array.inspect
