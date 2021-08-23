require "cpf_cnpj"

module Validator
  def validate_cpf(cpf)
    if CPF.valid?(cpf)
        true
    else
        false
    end
  end
end

class Client
  include Validator
end

client = Client.new
cpf = '00000000000000'
result = client.validate_cpf cpf


puts "Resultado: #{result}"