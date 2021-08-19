#
# Os métodos Ruby são muito semelhantes às funções em qualquer outra linguagem de programação.
# Os nomes dos métodos devem começar com uma letra minúscula. 
# Se você começar um nome de método com uma letra maiúscula, Ruby pode pensar que é uma constante e, portanto, pode analisar a chamada incorretamente.
# Os métodos devem ser definidos antes de chamá-los, caso contrário, o Ruby levantará uma exceção para a chamada de método indefinido.
# 

# Definição de um método
def name 
   "Seu nome aqui"
end
puts name

def full_name(first, last)
   "#{first} #{last}"
end
puts full_name('Ricardo', 'Galeno')

# Default values
def name_with_default_values(first = 'Seu', last = 'Madruga')
   "#{first} #{last}"
end
puts name_with_default_values
puts name_with_default_values('Ricardo')
puts name_with_default_values 'Ricardo'

# Many args 
def name_with_many_args(first = 'Ricardo', *args)
    puts args.class
   "#{first} #{args.join(' ')}"
end
puts name_with_many_args 'Ricardo', 'Galeno', 'Pereira'

# Parâmetros nomeados:
# Nesse caso, a ordem não importa, pois os valores dos parâmetros têm um nome associado
def named_params(first_name: 'Seu', last_name: 'Madruga')
   "#{first_name} #{last_name}"
end
puts named_params # => Seu Madruga
puts named_params first_name: 'Chaves' # => Chaves Madruga
puts named_params first_name: 'Menino', last_name: 'Kiko' # => Menino Kiko
puts named_params last_name: 'Kiko', first_name: 'Menino' # => Menino Kiko
