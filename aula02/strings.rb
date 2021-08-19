# Os literais de string mais simples são colocados entre aspas simples (o caractere apóstrofo). O texto entre aspas é o valor da string
str = 'Exemplo de uma simples string literal'
puts str

# Se você precisar colocar um apóstrofo dentro de um literal de string entre aspas simples, coloque uma barra invertida antes dele,
# para que o interpretador Ruby não pense que ele termina a string
str = 'Pingo d\'água. Posso adicionar um \\ também'
puts str

# Interpolação de string
# Você necessariamente precisa usar aspas duplas. Utiliza-se #{} para interpolar strings
str1 = "Hello"
str2 = "World"
puts "#{str1} #{str2}"

# Você pode substituir por expressões também
valor = 1_000_000
idade = 18
curso = 5
puts "Ganhei R$#{valor} jodando na mega sena"
puts "Terei #{idade + curso} anos após concluir a faculdade"

# Você pode criar strings de múltiplas linhas
str = "Essa string 
de multiplas linhas
        é válida"
puts str

# ou fazer simplemente assim
str = %(
    Essa string também
    foi escrita em 
    múltiplas linhas
)
puts str

# Isso é muito útil para strings que contém apas e que são de múltiplas linhas:
str = %(
    <div id="exemplo">
        <span name="alguma-coisa"></span>
    </div>
)

puts str

# "Mulitplicar" strings
str = "-" * 100
puts str

# Concatenação
str = "Hello " + "World"
puts str

# Substring
str = str[2..6]
puts str

# Algums métodos interessantes:
# empty?
# length (or size)
# downcase and upcase
# capitalize
# strip
# include?
# Para ver mais acesse a doc oficial: https://ruby-doc.org/core-2.6.1/String.html