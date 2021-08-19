#
# Tratam-se de códigos que escrevemos em nossos programas para analisar dados e decidir qual caminho seguir. 
# Dividem-se em dois tipos, Condicional e Iteração.
#

# Condicional:
# Tipo de estrutura de controle que executa um trecho de código dependendo do resultado de uma condição.

#
# Utilizando o if
#
action_type = 'create'
method = ''
 
if action_type == 'create' 
  method = 'POST'
end
 
puts "Applying a #{method} http request"

# OU

puts "Applying a POST http request" if action_type == 'create'

#
# Utilizando o else
#
action_type = 'retrieve'
method = ''
 
if action_type == 'create' 
  method = 'POST'
else
  method = 'GET'
end
 
puts "Applying a #{method} http request"

#
# Utilizando o elsif:
# Utilizado quando há a necessidade de verificar mais de uma condição em um if.
#
action_type = 'update'
method = ''
 
if action_type == 'create' 
  method = 'POST'
elsif action_type == 'update'
  method = 'PUT'
else
  method = 'GET'
end
 
puts "Applying a #{method} http request"

#
# Utilizando o unless: 
# Enquanto o if é executado quando sua condição é verdadeira, o unless ocorre de forma contrária. É executado apenas quando a condição é falsa.
#
action_type = 'retrieve'
method = ''
 
unless action_type == 'create' 
  method = 'GET'
end
 
puts "Applying a #{method} http request"

# OU

puts "Applying a GET http request" unless action_type == 'create'

#
# Case
# Instrução muito parecida com o if. Ele se enquadra muito bem a situações com diversas condições. Equivale ao switch de outros linguagens.
# Não é preciso usar o break como em outra linguagens.
#

action_type = 'delete'
 
case action_type
when 'create', 'update'
  puts 'POST'
when 'delete', 'PATCH'
  puts 'Não permitida'
when 'retrieve'
  puts 'GET'
else 
  puts 'Não foi possível identificar'
end

age = 30
case age
when 1..20
  puts 'Você faz parte da geração Z'
when 21..35
  puts 'Você é cringe'
when 35..65
  puts 'Você faz parte da geração X'
else
  puts 'Não foi possível identificar'
end
