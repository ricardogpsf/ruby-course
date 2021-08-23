# Antes de usar a gem precisamos instalá-la. Execute no terminal:
# $ gem install cpf_cnpj
# Link para o github da gem: https://github.com/fnando/cpf_cnpj
# 
# ou podemos usar o Bundler para gerenciar dependencias (gems):
# $ gem install bundler
# $ bundle init
# Um arquivo Gemfile será criado, é onde adicionamos nossas gems, no caso "gem 'cpf_cnpj'"
# Em seguida executamos:
# $ bundle install
#

require "cpf_cnpj"
 
def check_cpf(cpf_number)
 if CPF.valid?(cpf_number)
   return "O cpf informado é valido"
 else
   return "O cpf informado é invalido"
 end
end
 
print 'Digite seu cpf: '
cpf_number = gets.chomp.to_s
 
result = check_cpf(cpf_number)
 
puts result