#
# Ruby é uma linguagem de programação orientada a objetos perfeita. Os recursos da linguagem de programação orientada a objetos incluem
#   - Encapsulamento de dados
#       Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar e incluir novas funcionalidades.
#   - Abstração de dados
#       Ação de abstrair uma entidade do mundo real e transformá-la em uma classe
#   - Polimorfismo
#       Capacidade de utilizar um método de diferentes formas para diferentes Objetos.
#   - Herança
#       Habilidade de criar uma Classe com características de outra existente. A herança provê o reuso e reaproveitamento de código.
#

# Definindo uma classe
class Customer
end

customer = Customer.new
puts customer

class Customer
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
end
customer = Customer.new('Ricardo')
puts customer.name

# Métodos de acesso
class Customer
    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def name=(new_name)
        @name = new_name
    end
end
customer = Customer.new('Ricardo')
puts customer.name
customer.name = 'Fernando'
puts customer.name

# Herança e polimorfismo
class CustomerAPI
    def retrieve_data
        'chamando http://localhost.com/api/users'
    end
end

class CustomerA < CustomerAPI
    def retrieve_data
        'chamando http://customer-a.com/api/users'
    end
end

class CustomerB < CustomerAPI
    def retrieve_data
        'chamando http://customer-b.com/api/users'
    end
end

apiLocalhost = CustomerAPI.new
apiA = CustomerA.new
apiB = CustomerB.new

puts apiLocalhost.retrieve_data
puts apiA.retrieve_data
puts apiB.retrieve_data

# Escopo de variáveis
#   - Local: começa com letra minúscula
#   - Instância: começa com @
#   - Classe: começa com @@
#   - Global: começa com $

# Acessores
# attr_accessor :name, :age

class Client
    attr_accessor :name, :api_url

    def self.class_method_example
        # codigo aqui ...
        'esse metodo é como um método de classe'
    end

    def description
        <<-EOF
        massa
        EOF
    end
end

a = Client.new
a.name = 'HP'
a.api_url = 'http://hp.com/api/users'
puts a.name, a.api_url
puts a.description
puts Client.class_method_example